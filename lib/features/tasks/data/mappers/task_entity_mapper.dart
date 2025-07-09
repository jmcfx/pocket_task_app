import '../models/task_model.dart';
import '../../domain/entities/task_entity.dart';

extension TaskEntityMapperX on TaskEntity {
  TaskModel toModel() => TaskModel(
    id: id,
    title: title,
    description: description,
    selectedDate: selectedDate,
    selectedTime: selectedTime,
    status: status,

  );
}
