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


class TitleChanged implements TaskEvent {
  const TitleChanged(this.title);
  

 final  String title;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TitleChangedCopyWith<TitleChanged> get copyWith => _$TitleChangedCopyWithImpl<TitleChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TitleChanged&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode => Object.hash(runtimeType,title);

@override
String toString() {
  return 'TaskEvent.titleChanged(title: $title)';
}


}

/// @nodoc
abstract mixin class $TitleChangedCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $TitleChangedCopyWith(TitleChanged value, $Res Function(TitleChanged) _then) = _$TitleChangedCopyWithImpl;
@useResult
$Res call({
 String title
});




}
/// @nodoc
class _$TitleChangedCopyWithImpl<$Res>
    implements $TitleChangedCopyWith<$Res> {
  _$TitleChangedCopyWithImpl(this._self, this._then);

  final TitleChanged _self;
  final $Res Function(TitleChanged) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,}) {
  return _then(TitleChanged(
null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DescriptionChanged implements TaskEvent {
  const DescriptionChanged(this.description);
  

 final  String description;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DescriptionChangedCopyWith<DescriptionChanged> get copyWith => _$DescriptionChangedCopyWithImpl<DescriptionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DescriptionChanged&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'TaskEvent.descriptionChanged(description: $description)';
}


}

/// @nodoc
abstract mixin class $DescriptionChangedCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $DescriptionChangedCopyWith(DescriptionChanged value, $Res Function(DescriptionChanged) _then) = _$DescriptionChangedCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class _$DescriptionChangedCopyWithImpl<$Res>
    implements $DescriptionChangedCopyWith<$Res> {
  _$DescriptionChangedCopyWithImpl(this._self, this._then);

  final DescriptionChanged _self;
  final $Res Function(DescriptionChanged) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(DescriptionChanged(
null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DateChanged implements TaskEvent {
  const DateChanged(this.date);
  

 final  DateTime date;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DateChangedCopyWith<DateChanged> get copyWith => _$DateChangedCopyWithImpl<DateChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DateChanged&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,date);

@override
String toString() {
  return 'TaskEvent.dateChanged(date: $date)';
}


}

/// @nodoc
abstract mixin class $DateChangedCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $DateChangedCopyWith(DateChanged value, $Res Function(DateChanged) _then) = _$DateChangedCopyWithImpl;
@useResult
$Res call({
 DateTime date
});




}
/// @nodoc
class _$DateChangedCopyWithImpl<$Res>
    implements $DateChangedCopyWith<$Res> {
  _$DateChangedCopyWithImpl(this._self, this._then);

  final DateChanged _self;
  final $Res Function(DateChanged) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? date = null,}) {
  return _then(DateChanged(
null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc


class TimeChanged implements TaskEvent {
  const TimeChanged(this.time);
  

 final  TimeOfDay time;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimeChangedCopyWith<TimeChanged> get copyWith => _$TimeChangedCopyWithImpl<TimeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimeChanged&&(identical(other.time, time) || other.time == time));
}


@override
int get hashCode => Object.hash(runtimeType,time);

@override
String toString() {
  return 'TaskEvent.timeChanged(time: $time)';
}


}

/// @nodoc
abstract mixin class $TimeChangedCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $TimeChangedCopyWith(TimeChanged value, $Res Function(TimeChanged) _then) = _$TimeChangedCopyWithImpl;
@useResult
$Res call({
 TimeOfDay time
});




}
/// @nodoc
class _$TimeChangedCopyWithImpl<$Res>
    implements $TimeChangedCopyWith<$Res> {
  _$TimeChangedCopyWithImpl(this._self, this._then);

  final TimeChanged _self;
  final $Res Function(TimeChanged) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? time = null,}) {
  return _then(TimeChanged(
null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as TimeOfDay,
  ));
}


}

/// @nodoc


class StatusChanged implements TaskEvent {
  const StatusChanged(this.status);
  

 final  TaskStatus status;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatusChangedCopyWith<StatusChanged> get copyWith => _$StatusChangedCopyWithImpl<StatusChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatusChanged&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,status);

@override
String toString() {
  return 'TaskEvent.statusChanged(status: $status)';
}


}

/// @nodoc
abstract mixin class $StatusChangedCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $StatusChangedCopyWith(StatusChanged value, $Res Function(StatusChanged) _then) = _$StatusChangedCopyWithImpl;
@useResult
$Res call({
 TaskStatus status
});




}
/// @nodoc
class _$StatusChangedCopyWithImpl<$Res>
    implements $StatusChangedCopyWith<$Res> {
  _$StatusChangedCopyWithImpl(this._self, this._then);

  final StatusChanged _self;
  final $Res Function(StatusChanged) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? status = null,}) {
  return _then(StatusChanged(
null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as TaskStatus,
  ));
}


}

/// @nodoc


class AddTaskPressed implements TaskEvent {
  const AddTaskPressed();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddTaskPressed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskEvent.addTaskPressed()';
}


}




/// @nodoc


class UpdateTaskPressed implements TaskEvent {
  const UpdateTaskPressed(this.taskId);
  

 final  String taskId;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateTaskPressedCopyWith<UpdateTaskPressed> get copyWith => _$UpdateTaskPressedCopyWithImpl<UpdateTaskPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateTaskPressed&&(identical(other.taskId, taskId) || other.taskId == taskId));
}


@override
int get hashCode => Object.hash(runtimeType,taskId);

@override
String toString() {
  return 'TaskEvent.updateTaskPressed(taskId: $taskId)';
}


}

/// @nodoc
abstract mixin class $UpdateTaskPressedCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $UpdateTaskPressedCopyWith(UpdateTaskPressed value, $Res Function(UpdateTaskPressed) _then) = _$UpdateTaskPressedCopyWithImpl;
@useResult
$Res call({
 String taskId
});




}
/// @nodoc
class _$UpdateTaskPressedCopyWithImpl<$Res>
    implements $UpdateTaskPressedCopyWith<$Res> {
  _$UpdateTaskPressedCopyWithImpl(this._self, this._then);

  final UpdateTaskPressed _self;
  final $Res Function(UpdateTaskPressed) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskId = null,}) {
  return _then(UpdateTaskPressed(
null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DeleteTaskPressed implements TaskEvent {
  const DeleteTaskPressed(this.taskId);
  

 final  String taskId;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteTaskPressedCopyWith<DeleteTaskPressed> get copyWith => _$DeleteTaskPressedCopyWithImpl<DeleteTaskPressed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteTaskPressed&&(identical(other.taskId, taskId) || other.taskId == taskId));
}


@override
int get hashCode => Object.hash(runtimeType,taskId);

@override
String toString() {
  return 'TaskEvent.deleteTaskPressed(taskId: $taskId)';
}


}

/// @nodoc
abstract mixin class $DeleteTaskPressedCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $DeleteTaskPressedCopyWith(DeleteTaskPressed value, $Res Function(DeleteTaskPressed) _then) = _$DeleteTaskPressedCopyWithImpl;
@useResult
$Res call({
 String taskId
});




}
/// @nodoc
class _$DeleteTaskPressedCopyWithImpl<$Res>
    implements $DeleteTaskPressedCopyWith<$Res> {
  _$DeleteTaskPressedCopyWithImpl(this._self, this._then);

  final DeleteTaskPressed _self;
  final $Res Function(DeleteTaskPressed) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? taskId = null,}) {
  return _then(DeleteTaskPressed(
null == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetAllTasks implements TaskEvent {
  const GetAllTasks();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAllTasks);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskEvent.getAllTasks()';
}


}




/// @nodoc


class ResetForm implements TaskEvent {
  const ResetForm();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetForm);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TaskEvent.resetForm()';
}


}




/// @nodoc


class EditExistingTask implements TaskEvent {
  const EditExistingTask(this.task);
  

 final  TaskEntity task;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditExistingTaskCopyWith<EditExistingTask> get copyWith => _$EditExistingTaskCopyWithImpl<EditExistingTask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditExistingTask&&(identical(other.task, task) || other.task == task));
}


@override
int get hashCode => Object.hash(runtimeType,task);

@override
String toString() {
  return 'TaskEvent.editExistingTask(task: $task)';
}


}

/// @nodoc
abstract mixin class $EditExistingTaskCopyWith<$Res> implements $TaskEventCopyWith<$Res> {
  factory $EditExistingTaskCopyWith(EditExistingTask value, $Res Function(EditExistingTask) _then) = _$EditExistingTaskCopyWithImpl;
@useResult
$Res call({
 TaskEntity task
});




}
/// @nodoc
class _$EditExistingTaskCopyWithImpl<$Res>
    implements $EditExistingTaskCopyWith<$Res> {
  _$EditExistingTaskCopyWithImpl(this._self, this._then);

  final EditExistingTask _self;
  final $Res Function(EditExistingTask) _then;

/// Create a copy of TaskEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? task = null,}) {
  return _then(EditExistingTask(
null == task ? _self.task : task // ignore: cast_nullable_to_non_nullable
as TaskEntity,
  ));
}


}

/// @nodoc
mixin _$TaskState {

 ViewState get viewState; TaskStatus get taskStatus; List<TaskEntity> get tasksSuccess; String? get taskFailure; String get title; String get description; DateTime? get selectedDate; TimeOfDay? get selectedTime; String? get taskId;
/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaskStateCopyWith<TaskState> get copyWith => _$TaskStateCopyWithImpl<TaskState>(this as TaskState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaskState&&(identical(other.viewState, viewState) || other.viewState == viewState)&&(identical(other.taskStatus, taskStatus) || other.taskStatus == taskStatus)&&const DeepCollectionEquality().equals(other.tasksSuccess, tasksSuccess)&&(identical(other.taskFailure, taskFailure) || other.taskFailure == taskFailure)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.selectedTime, selectedTime) || other.selectedTime == selectedTime)&&(identical(other.taskId, taskId) || other.taskId == taskId));
}


@override
int get hashCode => Object.hash(runtimeType,viewState,taskStatus,const DeepCollectionEquality().hash(tasksSuccess),taskFailure,title,description,selectedDate,selectedTime,taskId);

@override
String toString() {
  return 'TaskState(viewState: $viewState, taskStatus: $taskStatus, tasksSuccess: $tasksSuccess, taskFailure: $taskFailure, title: $title, description: $description, selectedDate: $selectedDate, selectedTime: $selectedTime, taskId: $taskId)';
}


}

/// @nodoc
abstract mixin class $TaskStateCopyWith<$Res>  {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) _then) = _$TaskStateCopyWithImpl;
@useResult
$Res call({
 ViewState viewState, TaskStatus taskStatus, List<TaskEntity> tasksSuccess, String? taskFailure, String title, String description, DateTime? selectedDate, TimeOfDay? selectedTime, String? taskId
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
@pragma('vm:prefer-inline') @override $Res call({Object? viewState = null,Object? taskStatus = null,Object? tasksSuccess = null,Object? taskFailure = freezed,Object? title = null,Object? description = null,Object? selectedDate = freezed,Object? selectedTime = freezed,Object? taskId = freezed,}) {
  return _then(_self.copyWith(
viewState: null == viewState ? _self.viewState : viewState // ignore: cast_nullable_to_non_nullable
as ViewState,taskStatus: null == taskStatus ? _self.taskStatus : taskStatus // ignore: cast_nullable_to_non_nullable
as TaskStatus,tasksSuccess: null == tasksSuccess ? _self.tasksSuccess : tasksSuccess // ignore: cast_nullable_to_non_nullable
as List<TaskEntity>,taskFailure: freezed == taskFailure ? _self.taskFailure : taskFailure // ignore: cast_nullable_to_non_nullable
as String?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,selectedDate: freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,selectedTime: freezed == selectedTime ? _self.selectedTime : selectedTime // ignore: cast_nullable_to_non_nullable
as TimeOfDay?,taskId: freezed == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _TaskState implements TaskState {
  const _TaskState([this.viewState = ViewState.idle, this.taskStatus = TaskStatus.upcoming, final  List<TaskEntity> tasksSuccess = const [], this.taskFailure, this.title = '', this.description = '', this.selectedDate, this.selectedTime, this.taskId]): _tasksSuccess = tasksSuccess;
  

@override@JsonKey() final  ViewState viewState;
@override@JsonKey() final  TaskStatus taskStatus;
 final  List<TaskEntity> _tasksSuccess;
@override@JsonKey() List<TaskEntity> get tasksSuccess {
  if (_tasksSuccess is EqualUnmodifiableListView) return _tasksSuccess;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tasksSuccess);
}

@override final  String? taskFailure;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override final  DateTime? selectedDate;
@override final  TimeOfDay? selectedTime;
@override final  String? taskId;

/// Create a copy of TaskState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaskStateCopyWith<_TaskState> get copyWith => __$TaskStateCopyWithImpl<_TaskState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaskState&&(identical(other.viewState, viewState) || other.viewState == viewState)&&(identical(other.taskStatus, taskStatus) || other.taskStatus == taskStatus)&&const DeepCollectionEquality().equals(other._tasksSuccess, _tasksSuccess)&&(identical(other.taskFailure, taskFailure) || other.taskFailure == taskFailure)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.selectedDate, selectedDate) || other.selectedDate == selectedDate)&&(identical(other.selectedTime, selectedTime) || other.selectedTime == selectedTime)&&(identical(other.taskId, taskId) || other.taskId == taskId));
}


@override
int get hashCode => Object.hash(runtimeType,viewState,taskStatus,const DeepCollectionEquality().hash(_tasksSuccess),taskFailure,title,description,selectedDate,selectedTime,taskId);

@override
String toString() {
  return 'TaskState(viewState: $viewState, taskStatus: $taskStatus, tasksSuccess: $tasksSuccess, taskFailure: $taskFailure, title: $title, description: $description, selectedDate: $selectedDate, selectedTime: $selectedTime, taskId: $taskId)';
}


}

/// @nodoc
abstract mixin class _$TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$TaskStateCopyWith(_TaskState value, $Res Function(_TaskState) _then) = __$TaskStateCopyWithImpl;
@override @useResult
$Res call({
 ViewState viewState, TaskStatus taskStatus, List<TaskEntity> tasksSuccess, String? taskFailure, String title, String description, DateTime? selectedDate, TimeOfDay? selectedTime, String? taskId
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
@override @pragma('vm:prefer-inline') $Res call({Object? viewState = null,Object? taskStatus = null,Object? tasksSuccess = null,Object? taskFailure = freezed,Object? title = null,Object? description = null,Object? selectedDate = freezed,Object? selectedTime = freezed,Object? taskId = freezed,}) {
  return _then(_TaskState(
null == viewState ? _self.viewState : viewState // ignore: cast_nullable_to_non_nullable
as ViewState,null == taskStatus ? _self.taskStatus : taskStatus // ignore: cast_nullable_to_non_nullable
as TaskStatus,null == tasksSuccess ? _self._tasksSuccess : tasksSuccess // ignore: cast_nullable_to_non_nullable
as List<TaskEntity>,freezed == taskFailure ? _self.taskFailure : taskFailure // ignore: cast_nullable_to_non_nullable
as String?,null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,freezed == selectedDate ? _self.selectedDate : selectedDate // ignore: cast_nullable_to_non_nullable
as DateTime?,freezed == selectedTime ? _self.selectedTime : selectedTime // ignore: cast_nullable_to_non_nullable
as TimeOfDay?,freezed == taskId ? _self.taskId : taskId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
