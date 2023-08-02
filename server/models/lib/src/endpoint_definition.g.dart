// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EndpointDefinition _$$_EndpointDefinitionFromJson(
        Map<String, dynamic> json) =>
    _$_EndpointDefinition(
      url: json['url'] as String,
      headers: Map<String, String>.from(json['headers'] as Map),
      modificators: (json['modificators'] as List<dynamic>)
          .map((e) => EndpointModificator.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EndpointDefinitionToJson(
        _$_EndpointDefinition instance) =>
    <String, dynamic>{
      'url': instance.url,
      'headers': instance.headers,
      'modificators': instance.modificators.map((e) => e.toJson()).toList(),
    };
