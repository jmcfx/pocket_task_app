import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/enums/task_status.dart';
import '../../../../core/utils/time_of_the_day_converter.dart';

part 'task_model.freezed.dart';

part 'task_model.g.dart'; 

@freezed
abstract class TaskModel with _$TaskModel {
  const factory TaskModel({
    required String? id,
    required String? title,
    required String? description,
    required DateTime ? selectedDate,
    @TimeOfDayConverter() required TimeOfDay ? selectedTime,
    required TaskStatus status,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, Object?> json) =>
      _$TaskModelFromJson(json);
}
