import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/task_status.dart';

part 'task_model.freezed.dart';

part 'task_model.g.dart';

@freezed
abstract class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String id,
    required String title,
    String? note,
    required DateTime createdAt,
    DateTime? dueDate,
    required bool isCompleted,
    required TaskStatus status,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, Object?> json) =>
      _$TaskModelFromJson(json);
}
