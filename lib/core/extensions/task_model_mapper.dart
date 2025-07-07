import '../../features/tasks/data/models/task_model.dart';
import '../../features/tasks/domain/entities/task_entity.dart';

extension TaskModelMapperX on TaskModel {
  TaskEntity toEntity() => TaskEntity(
    status: status,
    id: id,
    title: title,
    note: note,
    createdAt: createdAt,
    dueDate: dueDate,
    isCompleted: isCompleted,
  );
}
