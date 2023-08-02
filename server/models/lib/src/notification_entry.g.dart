// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationEntry _$$_NotificationEntryFromJson(Map<String, dynamic> json) =>
    _$_NotificationEntry(
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      endpointId: json['endpointId'] as String,
      id: json['id'] as String,
      title: json['title'] as String,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const <String, String>{},
      jsonBodyRaw: json['jsonBodyRaw'] as String?,
      textBody: json['textBody'] as String?,
      internalUrgency: json['internalUrgency'] as int? ?? 0,
      imageUrl: json['imageUrl'] as String?,
      type: json['type'] as String,
      subType: json['subType'] as String?,
      urls:
          (json['urls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      extraData: (json['extraData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$_NotificationEntryToJson(
        _$_NotificationEntry instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'endpointId': instance.endpointId,
      'id': instance.id,
      'title': instance.title,
      'headers': instance.headers,
      'jsonBodyRaw': instance.jsonBodyRaw,
      'textBody': instance.textBody,
      'internalUrgency': instance.internalUrgency,
      'imageUrl': instance.imageUrl,
      'type': instance.type,
      'subType': instance.subType,
      'urls': instance.urls,
      'extraData': instance.extraData,
    };

_$_UserRequestData _$$_UserRequestDataFromJson(Map<String, dynamic> json) =>
    _$_UserRequestData(
      userId: json['userId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      endpointId: json['endpointId'] as String,
      id: json['id'] as String,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const <String, String>{},
      jsonBodyRaw: json['jsonBodyRaw'] as String?,
      overrideTitle: json['overrideTitle'] as String?,
      overrideBody: json['overrideBody'] as String?,
      overrideUrgency: json['overrideUrgency'] as int?,
    );

Map<String, dynamic> _$$_UserRequestDataToJson(_$_UserRequestData instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'createdAt': instance.createdAt.toIso8601String(),
      'endpointId': instance.endpointId,
      'id': instance.id,
      'headers': instance.headers,
      'jsonBodyRaw': instance.jsonBodyRaw,
      'overrideTitle': instance.overrideTitle,
      'overrideBody': instance.overrideBody,
      'overrideUrgency': instance.overrideUrgency,
    };

_$_NotificationData _$$_NotificationDataFromJson(Map<String, dynamic> json) =>
    _$_NotificationData(
      title: json['title'] as String,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const <String, String>{},
      jsonBodyRaw: json['jsonBodyRaw'] as String?,
      textBody: json['textBody'] as String?,
      internalUrgency: json['internalUrgency'] as int? ?? 0,
      imageUrl: json['imageUrl'] as String?,
      subType: json['subType'] as String?,
      urls:
          (json['urls'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const <String>[],
      extraData: (json['extraData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$_NotificationDataToJson(_$_NotificationData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'headers': instance.headers,
      'jsonBodyRaw': instance.jsonBodyRaw,
      'textBody': instance.textBody,
      'internalUrgency': instance.internalUrgency,
      'imageUrl': instance.imageUrl,
      'subType': instance.subType,
      'urls': instance.urls,
      'extraData': instance.extraData,
    };

_$_UserRequestDataResponse _$$_UserRequestDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserRequestDataResponse(
      entries: (json['entries'] as List<dynamic>)
          .map((e) => UserRequestData.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastEvaluatedKey: json['lastEvaluatedKey'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_UserRequestDataResponseToJson(
        _$_UserRequestDataResponse instance) =>
    <String, dynamic>{
      'entries': instance.entries.map((e) => e.toJson()).toList(),
      'lastEvaluatedKey': instance.lastEvaluatedKey,
    };
