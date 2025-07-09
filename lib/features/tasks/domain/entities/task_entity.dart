import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:pocket_tasks_app/core/enums/task_status.dart';

class TaskEntity extends Equatable {
  final String? id;
  final String? title;
  final String? description;
  final DateTime? selectedDate;
  final TimeOfDay? selectedTime;
  final TaskStatus status;

  const TaskEntity({
    required this.status,
    required this.id,
    required this.title,
    required this.description,
    required this.selectedDate,
    required this.selectedTime,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    selectedTime,
    selectedDate,
    status,

  ];
}
