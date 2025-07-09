import 'package:flutter/material.dart';

import '../../../../core/use_case/use_case.dart';
import '../mappers/add_task_param_x.dart';
import '../../../../core/enums/task_status.dart';
import '../../../../core/utils/type_def.dart';
import '../repositories/task_repository.dart';

class GetAddTaskUseCase implements UseCase<void, TaskParam> {
  final TaskRepository _taskRepository;

  GetAddTaskUseCase({required TaskRepository taskRepository})
    : _taskRepository = taskRepository;

  @override
  Future<FailureOr<void>> call(TaskParam params) async {
    return await _taskRepository.addTask(params.toEntity());
  }
}

//Task Param Records ......
typedef TaskParam = ({
  String? id,
  String title,
  String? description,
  DateTime? selectedDate,
  TimeOfDay?  selectedTime,
  TaskStatus status,
});
