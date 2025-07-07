import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:pocket_tasks_app/features/tasks/data/data_sources/task_local_data_source.dart';
import 'package:pocket_tasks_app/features/tasks/domain/repositories/task_repository.dart';
import '../features/tasks/data/repositories_impl/task_repository_impl.dart';
import '../features/tasks/domain/use_cases/get_add_task_use_case.dart';
import '../features/tasks/domain/use_cases/get_update_task_use_case.dart';
import '../features/tasks/presentation/bloc/task_bloc.dart';

import '../features/tasks/domain/use_cases/get_delete_task_use_case.dart';
import '../features/tasks/domain/use_cases/get_tasks_use_case.dart';

final sl = GetIt.instance;

Future<void> initializeServiceLocator() async {
  //! Features
  //BLoc ...
  sl.registerFactory(
    () => TaskBloc(
      getAddTaskUseCase: sl(),
      getDeleteTaskUseCase: sl(),
      getTasksUseCase: sl(),
      getUpdateTaskUseCase: sl(),
    ),
  );

  //Use Case .....
  sl.registerLazySingleton(() => GetAddTaskUseCase(taskRepository: sl()));
  sl.registerLazySingleton(() => GetDeleteTaskUseCase(taskRepository: sl()));
  sl.registerLazySingleton(() => GetTasksUseCase(taskRepository: sl()));
  sl.registerLazySingleton(() => GetUpdateTaskUseCase(taskRepository: sl()));

  //Repository.....

  sl.registerLazySingleton<TaskRepository>( 
    () => TaskRepositoryImpl(localDataSource: sl()),
  );

  //Data Sources....
  sl.registerLazySingleton<TaskLocalDataSource>(
    () => TaskLocalDataSourceImpl(box: sl()),
  );

  //Externals ....
  final box = await Hive.openBox('tasksBox');
  sl.registerLazySingleton<Box>(() => box);
}
