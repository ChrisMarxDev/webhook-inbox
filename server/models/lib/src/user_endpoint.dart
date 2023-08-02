import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_endpoint.freezed.dart';

part 'user_endpoint.g.dart';

@freezed
class UserEndpoint with _$UserEndpoint {
  factory UserEndpoint({
    required String userId,
    required String endpointId,
    required DateTime createdAt,
  }) = _UserEndpoint;

  factory UserEndpoint.fromJson(Map<String, dynamic> json) =>
      _$UserEndpointFromJson(json);
}
