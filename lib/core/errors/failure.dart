import 'package:equatable/equatable.dart';

sealed class Failure extends Equatable {
  @override
  List<Object?> get props => [];
}

class TaskAlreadyExistsFailure extends Failure {}

class TaskNotFoundFailure extends Failure {}

class StorageFailure extends Failure {}

class TaskCorruptedFailure extends Failure {}
