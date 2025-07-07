import '../../features/tasks/data/models/task_model.dart';
import '../../features/tasks/domain/entities/task_entity.dart';

extension TaskEntityMapperX on TaskEntity {
  TaskModel toModel() => TaskModel(
    id: id,
    title: title,
    note: note,
    createdAt: createdAt,
    dueDate: dueDate,
    isCompleted: isCompleted,
    status: status,
  );
}
