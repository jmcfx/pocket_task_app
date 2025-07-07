// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TaskEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskEvent()';
}


}

/// @nodoc
class $TaskEventCopyWith<$Res>  {
$TaskEventCopyWith(TaskEvent _, $Res Function(TaskEvent) __);
}


/// @nodoc


class _GetTasksEvent implements TaskEvent {
  const _GetTasksEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetTasksEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskEvent.loadTasks()';
}


}




/// @nodoc


class _AddTaskEvent implements TaskEvent {
  const _AddTaskEvent(this.task);
  

 final  TaskEntity task;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddTaskEventCopyWith<_AddTaskEvent> get copyWith => __$AddTaskEventCopyWithImpl<_AddTaskEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddTaskEvent&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'TaskEvent.addTask(task: $task)';
}


}

/// @nodoc
abstract mixin class _$AddTaskEventCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$AddTaskEventCopyWith(_AddTaskEvent value, $Res Function(_AddTaskEvent) _then) = __$AddTaskEventCopyWithImpl;
@useResult
$Res call({
 TaskEntity task
});




}
/// @nodoc
class __$AddTaskEventCopyWithImpl<$Res>
    implements _$AddTaskEventCopyWith<$Res> {
  __$AddTaskEventCopyWithImpl(this._self, this._then);

  final _AddTaskEvent _self;
  final $Res Function(_AddTaskEvent) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(_AddTaskEvent(
null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskEntity,
  ));
}


}

/// @nodoc


class _UpdateTaskEvent implements TaskEvent {
  const _UpdateTaskEvent(this.task);
  

 final  TaskEntity task;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateTaskEventCopyWith<_UpdateTaskEvent> get copyWith => __$UpdateTaskEventCopyWithImpl<_UpdateTaskEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateTaskEvent&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'TaskEvent.updateTask(task: $task)';
}


}

/// @nodoc
abstract mixin class _$UpdateTaskEventCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$UpdateTaskEventCopyWith(_UpdateTaskEvent value, $Res Function(_UpdateTaskEvent) _then) = __$UpdateTaskEventCopyWithImpl;
@useResult
$Res call({
 TaskEntity task
});




}
/// @nodoc
class __$UpdateTaskEventCopyWithImpl<$Res>
    implements _$UpdateTaskEventCopyWith<$Res> {
  __$UpdateTaskEventCopyWithImpl(this._self, this._then);

  final _UpdateTaskEvent _self;
  final $Res Function(_UpdateTaskEvent) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(_UpdateTaskEvent(
null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskEntity,
  ));
}


}

/// @nodoc


class _DeleteTaskEvent implements TaskEvent {
  const _DeleteTaskEvent(this.taskId);
  

 final  String taskId;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteTaskEventCopyWith<_DeleteTaskEvent> get copyWith => __$DeleteTaskEventCopyWithImpl<_DeleteTaskEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteTaskEvent&&(identical(other.taskId, taskId) || other.taskId == taskId));
}


@override
int get hashCode => Object.hash(runtimeType,taskId);

@override
String toString() {
  return 'TaskEvent.deleteTask(taskId: $taskId)';
}


}

/// @nodoc
abstract mixin class _$DeleteTaskEventCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$DeleteTaskEventCopyWith(_DeleteTaskEvent value, $Res Function(_DeleteTaskEvent) _then) = __$DeleteTaskEventCopyWithImpl;
@useResult
$Res call({
 String taskId
});




}
/// @nodoc
class __$DeleteTaskEventCopyWithImpl<$Res>
    implements _$DeleteTaskEventCopyWith<$Res> {
  __$DeleteTaskEventCopyWithImpl(this._self, this._then);

  final _DeleteTaskEvent _self;
  final $Res Function(_DeleteTaskEvent) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskId = null,}) {
  return _then(_DeleteTaskEvent(
null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DueDateChanged implements TaskEvent {
  const _DueDateChanged(this.date);
  

 final  DateTime date;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DueDateChangedCopyWith<_DueDateChanged> get copyWith => __$DueDateChangedCopyWithImpl<_DueDateChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DueDateChanged&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'TaskEvent.dueDateChanged(date: $date)';
}


}

/// @nodoc
abstract mixin class _$DueDateChangedCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$DueDateChangedCopyWith(_DueDateChanged value, $Res Function(_DueDateChanged) _then) = __$DueDateChangedCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class __$DueDateChangedCopyWithImpl<$Res>
    implements _$DueDateChangedCopyWith<$Res> {
  __$DueDateChangedCopyWithImpl(this._self, this._then);

  final _DueDateChanged _self;
  final $Res Function(_DueDateChanged) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(_DueDateChanged(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class _TimeChanged implements TaskEvent {
  const _TimeChanged(this.time);
  

 final  TimeOfDay time;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimeChangedCopyWith<_TimeChanged> get copyWith => __$TimeChangedCopyWithImpl<_TimeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimeChanged&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode => Object.hash(runtimeType,time);

@override
String toString() {
  return 'TaskEvent.timeChanged(time: $time)';
}


}

/// @nodoc
abstract mixin class _$TimeChangedCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$TimeChangedCopyWith(_TimeChanged value, $Res Function(_TimeChanged) _then) = __$TimeChangedCopyWithImpl;
@useResult
$Res call({
 TimeOfDay time
});




}
/// @nodoc
class __$TimeChangedCopyWithImpl<$Res>
    implements _$TimeChangedCopyWith<$Res> {
  __$TimeChangedCopyWithImpl(this._self, this._then);

  final _TimeChanged _self;
  final $Res Function(_TimeChanged) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? time = null,}) {
  return _then(_TimeChanged(
null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as TimeOfDay,
  ));
}


}

/// @nodoc


class _TitleChanged implements TaskEvent {
  const _TitleChanged(this.title);
  

 final  String title;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TitleChangedCopyWith<_TitleChanged> get copyWith => __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TitleChanged&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'TaskEvent.titleChanged(title: $title)';
}


}

/// @nodoc
abstract mixin class _$TitleChangedCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$TitleChangedCopyWith(_TitleChanged value, $Res Function(_TitleChanged) _then) = __$TitleChangedCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(this._self, this._then);

  final _TitleChanged _self;
  final $Res Function(_TitleChanged) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(_TitleChanged(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DescriptionChanged implements TaskEvent {
  const _DescriptionChanged(this.description);
  

 final  String description;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith => __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DescriptionChanged&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'TaskEvent.descriptionChanged(description: $description)';
}


}

/// @nodoc
abstract mixin class _$DescriptionChangedCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(_DescriptionChanged value, $Res Function(_DescriptionChanged) _then) = __$DescriptionChangedCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(this._self, this._then);

  final _DescriptionChanged _self;
  final $Res Function(_DescriptionChanged) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(_DescriptionChanged(
null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CreateTaskPressed implements TaskEvent {
  const _CreateTaskPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateTaskPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskEvent.createTaskPressed()';
}


}




/// @nodoc


class _ResetEditingTask implements TaskEvent {
  const _ResetEditingTask();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetEditingTask);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskEvent.resetEditingTask()';
}


}




/// @nodoc
mixin _$TaskState {

 ViewState get viewState; TaskStatus get taskStatus; List<TaskEntity> get tasksSuccess; TaskEntity? get editingTask; String? get taskFailure;
/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskStateCopyWith<TaskState> get copyWith => _$TaskStateCopyWithImpl<TaskState>(this as TaskState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskState&&(identical(other.viewState, viewState) || other.viewState == viewState)&&(identical(other.taskStatus, taskStatus) || other.taskStatus == taskStatus)&&const DeepCollectionEquality().equals(other.tasksSuccess, tasksSuccess)&&(identical(other.editingTask, editingTask) || other.editingTask == editingTask)&&(identical(other.taskFailure, taskFailure) || other.taskFailure == taskFailure));
}


@override
int get hashCode => Object.hash(runtimeType,viewState,taskStatus,const DeepCollectionEquality().hash(tasksSuccess),editingTask,taskFailure);

@override
String toString() {
  return 'TaskState(viewState: $viewState, taskStatus: $taskStatus, tasksSuccess: $tasksSuccess, editingTask: $editingTask, taskFailure: $taskFailure)';
}


}

/// @nodoc
abstract mixin class $TaskStateCopyWith<$Res>  {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) _then) = _$TaskStateCopyWithImpl;
@useResult
$Res call({
 ViewState viewState, TaskStatus taskStatus, List<TaskEntity> tasksSuccess, TaskEntity? editingTask, String? taskFailure
});




}
/// @nodoc
class _$TaskStateCopyWithImpl<$Res>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._self, this._then);

  final TaskState _self;
  final $Res Function(TaskState) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? viewState = null,Object? taskStatus = null,Object? tasksSuccess = null,Object? editingTask = freezed,Object? taskFailure = freezed,}) {
  return _then(_self.copyWith(
viewState: null == viewState ? _self.viewState : viewState // ignore: cast_nullable_to_non_nullable
as ViewState,taskStatus: null == taskStatus ? _self.taskStatus : taskStatus // ignore: cast_nullable_to_non_nullable
as TaskStatus,tasksSuccess: null == tasksSuccess ? _self.tasksSuccess : tasksSuccess // ignore: cast_nullable_to_non_nullable
as List<TaskEntity>,editingTask: freezed == editingTask ? _self.editingTask : editingTask // ignore: cast_nullable_to_non_nullable
as TaskEntity?,taskFailure: freezed == taskFailure ? _self.taskFailure : taskFailure // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _TaskState implements TaskState {
  const _TaskState([this.viewState = ViewState.idle, this.taskStatus = TaskStatus.upcoming, final  List<TaskEntity> tasksSuccess = const [], this.editingTask, this.taskFailure]): _tasksSuccess = tasksSuccess;
  

@override@JsonKey() final  ViewState viewState;
@override@JsonKey() final  TaskStatus taskStatus;
 final  List<TaskEntity> _tasksSuccess;
@override@JsonKey() List<TaskEntity> get tasksSuccess {
  if (_tasksSuccess is EqualUnmodifiableListView) return _tasksSuccess;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasksSuccess);
}

@override final  TaskEntity? editingTask;
@override final  String? taskFailure;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskStateCopyWith<_TaskState> get copyWith => __$TaskStateCopyWithImpl<_TaskState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskState&&(identical(other.viewState, viewState) || other.viewState == viewState)&&(identical(other.taskStatus, taskStatus) || other.taskStatus == taskStatus)&&const DeepCollectionEquality().equals(other._tasksSuccess, _tasksSuccess)&&(identical(other.editingTask, editingTask) || other.editingTask == editingTask)&&(identical(other.taskFailure, taskFailure) || other.taskFailure == taskFailure));
}


@override
int get hashCode => Object.hash(runtimeType,viewState,taskStatus,const DeepCollectionEquality().hash(_tasksSuccess),editingTask,taskFailure);

@override
String toString() {
  return 'TaskState(viewState: $viewState, taskStatus: $taskStatus, tasksSuccess: $tasksSuccess, editingTask: $editingTask, taskFailure: $taskFailure)';
}


}

/// @nodoc
abstract mixin class _$TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$TaskStateCopyWith(_TaskState value, $Res Function(_TaskState) _then) = __$TaskStateCopyWithImpl;
@override @useResult
$Res call({
 ViewState viewState, TaskStatus taskStatus, List<TaskEntity> tasksSuccess, TaskEntity? editingTask, String? taskFailure
});




}
/// @nodoc
class __$TaskStateCopyWithImpl<$Res>
    implements _$TaskStateCopyWith<$Res> {
  __$TaskStateCopyWithImpl(this._self, this._then);

  final _TaskState _self;
  final $Res Function(_TaskState) _then;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewState = null,Object? taskStatus = null,Object? tasksSuccess = null,Object? editingTask = freezed,Object? taskFailure = freezed,}) {
  return _then(_TaskState(
null == viewState ? _self.viewState : viewState // ignore: cast_nullable_to_non_nullable
as ViewState,null == taskStatus ? _self.taskStatus : taskStatus // ignore: cast_nullable_to_non_nullable
as TaskStatus,null == tasksSuccess ? _self._tasksSuccess : tasksSuccess // ignore: cast_nullable_to_non_nullable
as List<TaskEntity>,freezed == editingTask ? _self.editingTask : editingTask // ignore: cast_nullable_to_non_nullable
as TaskEntity?,freezed == taskFailure ? _self.taskFailure : taskFailure // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
