import 'package:equatable/equatable.dart';
import 'package:pocket_tasks_app/core/enums/task_status.dart';

class TaskEntity extends Equatable {
  final String id;
  final String title;
  final String? note;
  final DateTime createdAt;
  final DateTime? dueDate;
  final bool isCompleted;
  final TaskStatus status;

  const TaskEntity({
    required this.status,
    required this.id,
    required this.title,
    this.note,
    required this.createdAt,
    this.dueDate,
    required this.isCompleted,
  });

  @override
  List<Object?> get props => [id, title, note, createdAt, dueDate, isCompleted , status];
}
