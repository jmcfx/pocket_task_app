

import '../../../../core/utils/type_def.dart';
import '../entities/task_entity.dart';

abstract interface class TaskRepository {
  Future<FailureOr<List<TaskEntity>>> getTasks();
  Future<FailureOr<void>> addTask(TaskEntity task);
  Future<FailureOr<void>> updateTask(TaskEntity task);
  Future<FailureOr<void>>deleteTask(String id);
}


