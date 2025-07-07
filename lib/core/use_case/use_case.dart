import 'package:equatable/equatable.dart';

import '../utils/type_def.dart';

abstract interface class UseCase<Type, Params> {
  Future<FailureOr<Type>> call(Params params);
}

//use case that don't take params
class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
