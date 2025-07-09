import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pocket_tasks_app/features/tasks/domain/entities/task_entity.dart';

import '../../features/tasks/presentation/bloc/task_bloc.dart';
import '../enums/view_state.dart';

extension TaskContextSelectors on BuildContext {
  ViewState get taskViewState =>
      select((TaskBloc bloc) => bloc.state.viewState);

  List<TaskEntity> get taskList =>
      select((TaskBloc bloc) => bloc.state.tasksSuccess);

  String? get taskFaiLure => select((TaskBloc bloc) => bloc.state.taskFailure);
}
