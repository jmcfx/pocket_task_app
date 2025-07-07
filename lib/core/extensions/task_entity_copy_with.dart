import 'package:pocket_tasks_app/core/enums/task_status.dart';
import 'package:pocket_tasks_app/features/tasks/domain/entities/task_entity.dart';

extension TaskEntityCopyWith on TaskEntity {
  TaskEntity copyWith({
    String? id,
    String? title,
    String? note,
    DateTime? createdAt,
    DateTime? dueDate,
    bool? isCompleted,
    TaskStatus? status,
  }) {
    return TaskEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      note: note ?? this.note,
      createdAt: createdAt ?? this.createdAt,
      dueDate: dueDate ?? this.dueDate,
      isCompleted: isCompleted ?? this.isCompleted,
      status: status ?? this.status,
    );
  }
}
