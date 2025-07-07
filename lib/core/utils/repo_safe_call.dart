import 'package:dartz/dartz.dart';
import '../errors/exceptions.dart';

import '../errors/failure.dart';
import 'type_def.dart';

mixin RepositorySafeCall {
  Future<FailureOr<T>> safeCall<T>(Future<T> Function() call) async {
    try {
      final result = await call();
      return right(result);
    } catch (e) {
      return left(_mapError(e));
    }
  }

  Failure _mapError(Object param) {
    return switch (param) {
      TaskAlreadyExistsException _ => TaskAlreadyExistsFailure(),
      TaskNotFoundException _ => TaskNotFoundFailure(),
      TaskCorruptedException _ => TaskCorruptedFailure(),
      _ => StorageFailure(),
    };
  }
}
