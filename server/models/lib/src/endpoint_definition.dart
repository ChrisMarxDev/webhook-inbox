import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:models/src/endpoint_modificator.dart';

part 'endpoint_definition.g.dart';

part 'endpoint_definition.freezed.dart';

@freezed
class EndpointDefinition with _$EndpointDefinition {
  factory EndpointDefinition({
    required String url,
    required Map<String, String> headers,
    required List<EndpointModificator> modificators,
  }) = _EndpointDefinition;

  factory EndpointDefinition.fromJson(Map<String, dynamic> json) =>
      _$EndpointDefinitionFromJson(json);
}
