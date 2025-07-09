import '../models/task_model.dart';
import '../../domain/entities/task_entity.dart';

extension TaskModelMapperX on TaskModel {
  TaskEntity toEntity() => TaskEntity(
    id: id,
    title: title,
    description: description,
    selectedDate: selectedDate,
    selectedTime: selectedTime,
    status: status,
    
  );
}
