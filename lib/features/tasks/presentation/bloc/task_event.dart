part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.loadTasks() = _GetTasksEvent;
  const factory TaskEvent.addTask(TaskEntity task) = _AddTaskEvent;
  const factory TaskEvent.updateTask(TaskEntity task) = _UpdateTaskEvent;
  const factory TaskEvent.deleteTask(String taskId) = _DeleteTaskEvent;
  const factory TaskEvent.dueDateChanged(DateTime date) = _DueDateChanged;
  const factory TaskEvent.timeChanged(TimeOfDay time) = _TimeChanged;
  const factory TaskEvent.titleChanged(String title) = _TitleChanged;
  const factory TaskEvent.descriptionChanged(String description) =
      _DescriptionChanged;
  const factory TaskEvent.createTaskPressed() = _CreateTaskPressed;
  const factory TaskEvent.resetEditingTask() = _ResetEditingTask;
}
