import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_entry.freezed.dart';

part 'notification_entry.g.dart';

@freezed
class NotificationEntry with _$NotificationEntry {
  factory NotificationEntry({
    required String userId,
    required DateTime createdAt,
    required String endpointId,
    required String id,
    required String title,
    @Default(<String, String>{}) Map<String, String> headers,
    String? jsonBodyRaw,
    String? textBody,
    @Default(0) int internalUrgency,
    String? imageUrl,
    required String type,
    String? subType,
    @Default(<String>[]) List<String> urls,
    Map<String, String>? extraData,
  }) = _NotificationEntry;

  factory NotificationEntry.fromJson(Map<String, dynamic> json) =>
      _$NotificationEntryFromJson(json);
}

extension NotificationEntryX on NotificationEntry {
  String get displayTitle => title.isEmpty ? type : title;
}

@freezed
class UserRequestData with _$UserRequestData {
  factory UserRequestData({
    required String userId,
    required DateTime createdAt,
    required String endpointId,
    required String id,
    @Default(<String, String>{}) Map<String, String> headers,
    String? jsonBodyRaw,
    String? overrideTitle,
    String? overrideBody,
    int? overrideUrgency,
  }) = _UserRequestData;

  factory UserRequestData.fromJson(Map<String, dynamic> json) =>
      _$UserRequestDataFromJson(json);
}

@freezed
class NotificationData with _$NotificationData {
  factory NotificationData({
    required String title,
    @Default(<String, String>{}) Map<String, String> headers,
    String? jsonBodyRaw,
    String? textBody,
    @Default(0) int internalUrgency,
    String? imageUrl,
    String? subType,
    @Default(<String>[]) List<String> urls,
    Map<String, String>? extraData,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}

@freezed
class UserRequestDataResponse with _$UserRequestDataResponse {
  factory UserRequestDataResponse({
    required List<UserRequestData> entries,
    Map<String, dynamic>? lastEvaluatedKey,
  }) = _UserRequestDataResponse;

  factory UserRequestDataResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRequestDataResponseFromJson(json);
}
