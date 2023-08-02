import 'package:freezed_annotation/freezed_annotation.dart';

part 'endpoint_modificator.freezed.dart';

part 'endpoint_modificator.g.dart';

@freezed
class EndpointModificator with _$EndpointModificator {
  factory EndpointModificator({required String id}) = _EndpointModificator;

  factory EndpointModificator.fromJson(Map<String, dynamic> json) =>
      _$EndpointModificatorFromJson(json);
}
