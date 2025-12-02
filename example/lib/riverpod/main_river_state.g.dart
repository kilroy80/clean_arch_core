// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_river_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MainRiverData _$MainRiverDataFromJson(Map<String, dynamic> json) =>
    _MainRiverData(
      inc: (json['inc'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$MainRiverDataToJson(_MainRiverData instance) =>
    <String, dynamic>{
      'inc': instance.inc,
    };

MainRiverStateInit _$MainRiverStateInitFromJson(Map<String, dynamic> json) =>
    MainRiverStateInit(
      data: json['data'] == null
          ? const MainRiverData()
          : MainRiverData.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MainRiverStateInitToJson(MainRiverStateInit instance) =>
    <String, dynamic>{
      'data': instance.data,
      'runtimeType': instance.$type,
    };

MainRiverStateLoad _$MainRiverStateLoadFromJson(Map<String, dynamic> json) =>
    MainRiverStateLoad(
      data: json['data'] == null
          ? const MainRiverData()
          : MainRiverData.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MainRiverStateLoadToJson(MainRiverStateLoad instance) =>
    <String, dynamic>{
      'data': instance.data,
      'runtimeType': instance.$type,
    };
