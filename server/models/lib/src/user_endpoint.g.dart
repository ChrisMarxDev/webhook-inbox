// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_endpoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEndpoint _$$_UserEndpointFromJson(Map<String, dynamic> json) =>
    _$_UserEndpoint(
      userId: json['userId'] as String,
      endpointId: json['endpointId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_UserEndpointToJson(_$_UserEndpoint instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'endpointId': instance.endpointId,
      'createdAt': instance.createdAt.toIso8601String(),
    };
