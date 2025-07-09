import 'package:pocket_tasks_app/core/constants/task_status_label.dart';

enum TaskStatus {
  due(label: AppStatusLabel.due),
  inProgress(label: AppStatusLabel.inProgress),
  completed(label: AppStatusLabel.completed),
  upcoming(label: AppStatusLabel.upcoming);

  final String label;

  const TaskStatus({required this.label});


}
