
import '../data_sources/task_local_data_source.dart';
import '../../../../core/extensions/task_entity_mapper.dart';
import '../../../../core/extensions/task_model_mapper.dart';
import '../../../../core/utils/repo_safe_call.dart';
import '../../../../core/utils/type_def.dart';
import '../../domain/entities/task_entity.dart';
import '../../domain/repositories/task_repository.dart';
import '../models/task_model.dart';

class TaskRepositoryImpl with RepositorySafeCall implements TaskRepository {
  final TaskLocalDataSource _localDataSource;

  TaskRepositoryImpl({required TaskLocalDataSource localDataSource})
    : _localDataSource = localDataSource;

  @override
  Future<FailureOr<void>> addTask(TaskEntity task) => safeCall<void>(() {
    return _localDataSource.addTask(task.toModel());
  });

  @override
  Future<FailureOr<void>> deleteTask(String id) => safeCall<void>(() {
    return _localDataSource.deleteTask(id);
  });

  @override
  Future<FailureOr<List<TaskEntity>>> getTasks() async {
    return safeCall<List<TaskEntity>>(() async {
      final List<TaskModel> fetchedTaskData = await _localDataSource
          .getAllTasks();
      return fetchedTaskData.map((model) => model.toEntity()).toList();
    });
  }

  @override
  Future<FailureOr<void>> updateTask(TaskEntity task) => safeCall<void>(() {
    return _localDataSource.updateTask(task.toModel());
  });
}
