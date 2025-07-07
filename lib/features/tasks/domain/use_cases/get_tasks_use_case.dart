import 'package:pocket_tasks_app/core/utils/type_def.dart';

import '../../../../core/use_case/use_case.dart';
import '../entities/task_entity.dart';
import '../repositories/task_repository.dart';

class GetTasksUseCase implements UseCase<List<TaskEntity>, NoParams> {
  final TaskRepository _taskRepository;

  GetTasksUseCase({required TaskRepository taskRepository})
    : _taskRepository = taskRepository;

  @override
  Future<FailureOr<List<TaskEntity>>> call([NoParams? params]) async {
    return await _taskRepository.getTasks();
  }
}
