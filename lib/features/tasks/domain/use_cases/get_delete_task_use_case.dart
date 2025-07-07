import 'package:equatable/equatable.dart';
import 'package:pocket_tasks_app/core/utils/type_def.dart';
import '../../../../core/use_case/use_case.dart';
import '../repositories/task_repository.dart';

class GetDeleteTaskUseCase implements UseCase<void, GetDeleteTaskParams> {
  final TaskRepository _taskRepository;

  GetDeleteTaskUseCase({required TaskRepository taskRepository})
    : _taskRepository = taskRepository;

  @override
  Future<FailureOr<void>> call(GetDeleteTaskParams params) async {
    return await _taskRepository.deleteTask(params.id);
  }
}

class GetDeleteTaskParams extends Equatable {
  final String id;

  const GetDeleteTaskParams({required this.id});
  @override
  List<Object?> get props => [id];
}
