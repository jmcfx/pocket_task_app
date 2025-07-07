import 'package:pocket_tasks_app/core/constants/task_status_label.dart';

enum TaskStatus {
  due(AppStatusLabel.due),
  inProgress(AppStatusLabel.inProgress),
  completed(AppStatusLabel.completed),
  upcoming(AppStatusLabel.upcoming);

  final String label;
  const TaskStatus(this.label);
}

// state.TaskStatus.completed.label;
