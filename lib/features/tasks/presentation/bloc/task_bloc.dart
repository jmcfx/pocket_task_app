import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/mappers/map_failure_to_message.dart';
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
    on<TitleChanged>(_onTitleChanged);
    on<DescriptionChanged>(_onDescriptionChanged);
    on<DateChanged>(_onDateChanged);
    on<TimeChanged>(_onTimeChanged);
    on<GetAllTasks>(_onGetAllTasks);
    on<AddTaskPressed>(_onAddTaskPressed);
    on<UpdateTaskPressed>(_onUpdateTaskPressed);
    //  on<DeleteTaskPressed>(_onDeleteTaskPressed);
    //  on<ResetForm>(_onResetForm);
    //  on<EditExistingTask>(_onEditExistingTask);
  }
  void _onTitleChanged(TitleChanged event, Emitter<TaskState> emit) {
    emit(state.copyWith(title: event.title));

  debugPrint(event.title);
  }

  // Description change....
  void _onDescriptionChanged(
    DescriptionChanged event,
    Emitter<TaskState> emit,
  ) {
    emit(state.copyWith(description: event.description));
    debugPrint(event.description);
  }

  // dateChanged.....
  void _onDateChanged(DateChanged event, Emitter<TaskState> emit) {
    emit(state.copyWith(selectedDate: event.date));
    debugPrint(event.date.toString());
  }

  // time Changed....
  void _onTimeChanged(TimeChanged event, Emitter<TaskState> emit) {
    emit(state.copyWith(selectedTime: event.time));
    debugPrint(event.time.toString());

  }

  // get all Tasks....
  void _onGetAllTasks(GetAllTasks event, Emitter<TaskState> emit) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await getTasksUseCase();
    result.fold(
      (l) => emit(
        state.copyWith(
          viewState: ViewState.error,
          taskFailure: mapFailureToMessage(l),
        ),
      ),
      (r) => emit(state.copyWith(viewState: ViewState.success, tasksSuccess: r)),
    );
  }

  //add Task...
  void _onAddTaskPressed(AddTaskPressed event, Emitter<TaskState> emit) async {
    emit(
      state.copyWith(
        viewState: ViewState.loading,
        taskStatus: TaskStatus.upcoming,
      ),
    );
    final result = await getAddTaskUseCase((
      id: "123456",
      title: state.title,
      description: state.description,
      selectedDate: state.selectedDate,
      selectedTime: state.selectedTime,
      status: state.taskStatus,
    ));

    result.fold(
      (l) => emit(
        state.copyWith(
          viewState: ViewState.error,
          taskFailure: mapFailureToMessage(l),
        ),
      ),
      (_) => emit(
        state.copyWith(
          title: state.title,
          description: state.description,
          selectedDate: state.selectedDate,
          selectedTime: state.selectedTime,
          viewState: ViewState.success,
        ),
      ),
    );
  }

  //update Task...
  void _onUpdateTaskPressed(
    UpdateTaskPressed event,
    Emitter<TaskState> emit,
  ) async {
    emit(state.copyWith(viewState: ViewState.loading));
    final result = await getUpdateTaskUseCase((
      id: state.taskId,
      title: state.title,
      description: state.description,
      selectedDate: state.selectedDate,
      selectedTime: state.selectedTime,
      status: state.taskStatus,
    ));

    result.fold(
      (l) => emit(
        state.copyWith(
          viewState: ViewState.error,
          taskFailure: mapFailureToMessage(l),
        ),
      ),
      (r) => emit(
        state.copyWith(taskId: event.taskId, viewState: ViewState.success),
      ),
    );
  }
}
