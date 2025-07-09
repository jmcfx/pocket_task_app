import 'package:pocket_tasks_app/features/tasks/domain/mappers/add_task_param_x.dart';
import 'package:pocket_tasks_app/features/tasks/domain/use_cases/get_add_task_use_case.dart';

import '../../../../core/use_case/use_case.dart';
import '../../../../core/utils/type_def.dart';
import '../repositories/task_repository.dart';

class GetUpdateTaskUseCase  implements UseCase<void, TaskParam> {
  final TaskRepository _taskRepository;

  GetUpdateTaskUseCase({required TaskRepository taskRepository})
    : _taskRepository = taskRepository;

  @override
  Future<FailureOr<void>> call(TaskParam params) async {
    return await _taskRepository.updateTask(params.toEntity());
  }
}
