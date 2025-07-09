import '../errors/failure.dart';

String mapFailureToMessage(Failure failure) {
  return switch (failure) {
    TaskAlreadyExistsFailure _ => "Task already exists",
    TaskNotFoundFailure _ => "Task not found",
    StorageFailure _ => "Storage failure",
    TaskCorruptedFailure _ => "Task corrupted",
  };
}
