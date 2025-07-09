// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => _TaskModel(
  id: json['id'] as String?,
  title: json['title'] as String?,
  description: json['description'] as String?,
  selectedDate: json['selectedDate'] == null
      ? null
      : DateTime.parse(json['selectedDate'] as String),
  selectedTime: _$JsonConverterFromJson<String, TimeOfDay>(
    json['selectedTime'],
    const TimeOfDayConverter().fromJson,
  ),
  status: $enumDecode(_$TaskStatusEnumMap, json['status']),
);

Map<String, dynamic> _$TaskModelToJson(_TaskModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'selectedDate': instance.selectedDate?.toIso8601String(),
      'selectedTime': _$JsonConverterToJson<String, TimeOfDay>(
        instance.selectedTime,
        const TimeOfDayConverter().toJson,
      ),
      'status': _$TaskStatusEnumMap[instance.status]!,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

const _$TaskStatusEnumMap = {
  TaskStatus.due: 'due',
  TaskStatus.inProgress: 'inProgress',
  TaskStatus.completed: 'completed',
  TaskStatus.upcoming: 'upcoming',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
