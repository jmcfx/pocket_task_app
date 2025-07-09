import 'package:pocket_tasks_app/features/tasks/domain/entities/task_entity.dart';
import 'package:pocket_tasks_app/features/tasks/domain/use_cases/get_add_task_use_case.dart';

extension AddTaskParamX on TaskParam {
  TaskEntity toEntity() {
    return TaskEntity(
      status: status,
      id: id,
      title: title,
      description: description,
      selectedDate: selectedDate,
      selectedTime: selectedTime,
    );
  }
}
