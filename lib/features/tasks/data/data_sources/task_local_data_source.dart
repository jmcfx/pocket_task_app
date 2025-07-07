import 'package:hive/hive.dart';
import 'package:pocket_tasks_app/core/errors/exceptions.dart';

import '../models/task_model.dart';

abstract interface class TaskLocalDataSource {
  Future<void> addTask(TaskModel task);
  Future<void> updateTask(TaskModel task);
  Future<void> deleteTask(String id);
  Future<List<TaskModel>> getAllTasks();
}

class TaskLocalDataSourceImpl implements TaskLocalDataSource {
  final Box _box;

  TaskLocalDataSourceImpl({required Box box}) : _box = box;

  @override
  Future<void> addTask(TaskModel task) async {
    if (_box.containsKey(task.id)) {
      throw TaskAlreadyExistsException();
    }

    await _box.put(task.id, task.toJson());
  }

  @override
  Future<void> updateTask(TaskModel task) async {
    if (!_box.containsKey(task.id)) {
      throw TaskNotFoundException();
    }
    await _box.put(task.id, task.toJson());
  }

  @override
  Future<void> deleteTask(String id) async {
    if (!_box.containsKey(id)) {
      throw TaskNotFoundException();
    }
    await _box.delete(id);
  }

  @override
  Future<List<TaskModel>> getAllTasks() async {
    if (_box.isEmpty) return [];

    return _box.values.map((json) {
      if (json is! Map<String, dynamic>) {
        throw TaskCorruptedException();
      }
      return TaskModel.fromJson(Map<String, dynamic>.from(json));
    }).toList();
  }
}
