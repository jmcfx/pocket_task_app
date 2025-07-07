import 'package:pocket_tasks_app/core/use_case/use_case.dart';

import '../../../../core/utils/type_def.dart';
import '../entities/task_entity.dart';
import '../repositories/task_repository.dart';

class GetAddTaskUseCase implements UseCase<void, TaskEntity> {
  final TaskRepository _taskRepository;

  GetAddTaskUseCase({required TaskRepository taskRepository})
    : _taskRepository = taskRepository;

  @override
  Future<FailureOr<void>> call(TaskEntity params) async {
    return await _taskRepository.addTask(params);
  }
}
