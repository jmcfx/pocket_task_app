part of 'task_bloc.dart';

@freezed
abstract class TaskState with _$TaskState {
  const factory TaskState([
    @Default(ViewState.idle) ViewState viewState,
    @Default(TaskStatus.upcoming) TaskStatus taskStatus,
    @Default([]) List<TaskEntity> tasksSuccess,
    TaskEntity? editingTask,
    String? taskFailure,
  ]) = _TaskState;
}