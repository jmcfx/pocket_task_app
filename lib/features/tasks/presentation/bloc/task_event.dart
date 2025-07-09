part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {

   // Form Field Events
  const factory TaskEvent.titleChanged(String title) = TitleChanged;
  const factory TaskEvent.descriptionChanged(String description) =
      DescriptionChanged;
  const factory TaskEvent.dateChanged(DateTime date) = DateChanged;
  const factory TaskEvent.timeChanged(TimeOfDay time) = TimeChanged;
  const factory TaskEvent.statusChanged(TaskStatus status) = StatusChanged;

  // CRUD Events
  const factory TaskEvent.addTaskPressed() = AddTaskPressed;
  const factory TaskEvent.updateTaskPressed(String taskId) = UpdateTaskPressed;
  const factory TaskEvent.deleteTaskPressed(String taskId) = DeleteTaskPressed;
  const factory TaskEvent.getAllTasks() = GetAllTasks;

  // Utility
  const factory TaskEvent.resetForm() = ResetForm;
  const factory TaskEvent.editExistingTask(TaskEntity task) = EditExistingTask;
}
