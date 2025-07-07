import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocket_tasks_app/core/extensions/task_entity_copy_with.dart';
import '../../../../core/enums/task_status.dart';
import '../../domain/use_cases/get_add_task_use_case.dart';
import '../../domain/use_cases/get_delete_task_use_case.dart';
import '../../domain/use_cases/get_tasks_use_case.dart';
import '../../../../core/enums/view_state.dart';
import '../../domain/entities/task_entity.dart';
import '../../domain/use_cases/get_update_task_use_case.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final GetAddTaskUseCase getAddTaskUseCase;
  final GetDeleteTaskUseCase getDeleteTaskUseCase;
  final GetTasksUseCase getTasksUseCase;
  final GetUpdateTaskUseCase getUpdateTaskUseCase;

  TaskBloc({
    required this.getAddTaskUseCase,
    required this.getDeleteTaskUseCase,
    required this.getTasksUseCase,
    required this.getUpdateTaskUseCase,
  }) : super(TaskState()) {
    on<_AddTaskEvent>(_onAddTaskEvent);
    on<_UpdateTaskEvent>(_onUpdateTaskEvent);
    on<_DeleteTaskEvent>(_onDeleteTaskEvent);
    on<_GetTasksEvent>(_onGetTasksEvent);
    on<_DueDateChanged>(_onDueDateChanged);
    on<_TitleChanged>(_onTitleChanged);
    on<_DescriptionChanged>(_onDescriptionChanged);
    on<_CreateTaskPressed>(_onCreateTaskPressed);
    on<_ResetEditingTask>(_onResetEditingTask);
  }
  // add Task Event .....
  void _onAddTaskEvent(_AddTaskEvent event, Emitter emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await getAddTaskUseCase(event.task);
    result.fold((l) => emit(state.copyWith(viewState: ViewState.error)), (_) {
      final addedTasks = List<TaskEntity>.from(state.tasksSuccess)
        ..add(event.task);
      emit(
        state.copyWith(
          taskStatus: TaskStatus.upcoming,
          viewState: ViewState.success,
          tasksSuccess: addedTasks,
        ),
      );
    });
  }

  // UpdateDate task .....
  void _onUpdateTaskEvent(_UpdateTaskEvent event, Emitter emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await getUpdateTaskUseCase(event.task);

    result.fold((l) => emit(state.copyWith()), (_) {
      final updatedTasks = state.tasksSuccess.map((task) {
        return task.id == event.task.id ? event.task : task;
      }).toList();

      emit(
        state.copyWith(
          viewState: ViewState.success,
          tasksSuccess: updatedTasks,
        ),
      );
    });
  }

  //Delete task ....
  void _onDeleteTaskEvent(_DeleteTaskEvent event, Emitter emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await getDeleteTaskUseCase(
      GetDeleteTaskParams(id: event.taskId),
    );

    result.fold((l) => emit(state.copyWith()), (_) {
      final updatedTasks = state.tasksSuccess
          .where((task) => task.id != event.taskId)
          .toList();

      emit(
        state.copyWith(
          tasksSuccess: updatedTasks,
          viewState: ViewState.success,
        ),
      );
    });
  }

  // get task
  void _onGetTasksEvent(_GetTasksEvent event, Emitter emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await getTasksUseCase();
    result.fold((l) => emit(state.copyWith()), (success) {
      emit(state.copyWith(tasksSuccess: success, viewState: ViewState.success));
    });
  }

  //DueDateChanged.....
  void _onDueDateChanged(_DueDateChanged event, Emitter<TaskState> emit) {
    final task = state.editingTask;

    emit(
      state.copyWith(
        editingTask: task!.copyWith(dueDate: event.date),
        taskStatus: TaskStatus.upcoming,
      ),
    );
  }

  //Description
  void _onDescriptionChanged(
    _DescriptionChanged event,
    Emitter<TaskState> emit,
  ) {
    final task = state.editingTask;

    emit(state.copyWith(editingTask: task!.copyWith(note: event.description)));
  }

  void _onTitleChanged(_TitleChanged event, Emitter<TaskState> emit) {
    final task = state.editingTask;

    emit(state.copyWith(editingTask: task!.copyWith(title: event.title)));
  }

  //Created TaskPressed ....
  void _onCreateTaskPressed(
    _CreateTaskPressed event,
    Emitter<TaskState> emit,
  ) async {
    final task = state.editingTask;

    if (task == null) return;

    emit(state.copyWith(viewState: ViewState.loading, taskFailure: null));

    final result = await getAddTaskUseCase(task);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            viewState: ViewState.error,
            //   taskFailure: failure.message,
          ),
        );
      },
      (_) {
        emit(
          state.copyWith(
            viewState: ViewState.success,
            editingTask: null,
            taskFailure: null,
          ),
        );
      },
    );
  }

  //reset
  void _onResetEditingTask(_ResetEditingTask event, Emitter<TaskState> emit) {
    emit(state.copyWith(editingTask: null));
  }
}
