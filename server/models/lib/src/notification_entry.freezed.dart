// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationEntry _$NotificationEntryFromJson(Map<String, dynamic> json) {
  return _NotificationEntry.fromJson(json);
}

/// @nodoc
mixin _$NotificationEntry {
  String get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get endpointId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Map<String, String> get headers => throw _privateConstructorUsedError;
  String? get jsonBodyRaw => throw _privateConstructorUsedError;
  String? get textBody => throw _privateConstructorUsedError;
  int get internalUrgency => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get subType => throw _privateConstructorUsedError;
  List<String> get urls => throw _privateConstructorUsedError;
  Map<String, String>? get extraData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationEntryCopyWith<NotificationEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEntryCopyWith<$Res> {
  factory $NotificationEntryCopyWith(
          NotificationEntry value, $Res Function(NotificationEntry) then) =
      _$NotificationEntryCopyWithImpl<$Res, NotificationEntry>;
  @useResult
  $Res call(
      {String userId,
      DateTime createdAt,
      String endpointId,
      String id,
      String title,
      Map<String, String> headers,
      String? jsonBodyRaw,
      String? textBody,
      int internalUrgency,
      String? imageUrl,
      String type,
      String? subType,
      List<String> urls,
      Map<String, String>? extraData});
}

/// @nodoc
class _$NotificationEntryCopyWithImpl<$Res, $Val extends NotificationEntry>
    implements $NotificationEntryCopyWith<$Res> {
  _$NotificationEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? createdAt = null,
    Object? endpointId = null,
    Object? id = null,
    Object? title = null,
    Object? headers = null,
    Object? jsonBodyRaw = freezed,
    Object? textBody = freezed,
    Object? internalUrgency = null,
    Object? imageUrl = freezed,
    Object? type = null,
    Object? subType = freezed,
    Object? urls = null,
    Object? extraData = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endpointId: null == endpointId
          ? _value.endpointId
          : endpointId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      jsonBodyRaw: freezed == jsonBodyRaw
          ? _value.jsonBodyRaw
          : jsonBodyRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      textBody: freezed == textBody
          ? _value.textBody
          : textBody // ignore: cast_nullable_to_non_nullable
              as String?,
      internalUrgency: null == internalUrgency
          ? _value.internalUrgency
          : internalUrgency // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extraData: freezed == extraData
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationEntryCopyWith<$Res>
    implements $NotificationEntryCopyWith<$Res> {
  factory _$$_NotificationEntryCopyWith(_$_NotificationEntry value,
          $Res Function(_$_NotificationEntry) then) =
      __$$_NotificationEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      DateTime createdAt,
      String endpointId,
      String id,
      String title,
      Map<String, String> headers,
      String? jsonBodyRaw,
      String? textBody,
      int internalUrgency,
      String? imageUrl,
      String type,
      String? subType,
      List<String> urls,
      Map<String, String>? extraData});
}

/// @nodoc
class __$$_NotificationEntryCopyWithImpl<$Res>
    extends _$NotificationEntryCopyWithImpl<$Res, _$_NotificationEntry>
    implements _$$_NotificationEntryCopyWith<$Res> {
  __$$_NotificationEntryCopyWithImpl(
      _$_NotificationEntry _value, $Res Function(_$_NotificationEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? createdAt = null,
    Object? endpointId = null,
    Object? id = null,
    Object? title = null,
    Object? headers = null,
    Object? jsonBodyRaw = freezed,
    Object? textBody = freezed,
    Object? internalUrgency = null,
    Object? imageUrl = freezed,
    Object? type = null,
    Object? subType = freezed,
    Object? urls = null,
    Object? extraData = freezed,
  }) {
    return _then(_$_NotificationEntry(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endpointId: null == endpointId
          ? _value.endpointId
          : endpointId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      jsonBodyRaw: freezed == jsonBodyRaw
          ? _value.jsonBodyRaw
          : jsonBodyRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      textBody: freezed == textBody
          ? _value.textBody
          : textBody // ignore: cast_nullable_to_non_nullable
              as String?,
      internalUrgency: null == internalUrgency
          ? _value.internalUrgency
          : internalUrgency // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extraData: freezed == extraData
          ? _value._extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationEntry implements _NotificationEntry {
  _$_NotificationEntry(
      {required this.userId,
      required this.createdAt,
      required this.endpointId,
      required this.id,
      required this.title,
      final Map<String, String> headers = const <String, String>{},
      this.jsonBodyRaw,
      this.textBody,
      this.internalUrgency = 0,
      this.imageUrl,
      required this.type,
      this.subType,
      final List<String> urls = const <String>[],
      final Map<String, String>? extraData})
      : _headers = headers,
        _urls = urls,
        _extraData = extraData;

  factory _$_NotificationEntry.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationEntryFromJson(json);

  @override
  final String userId;
  @override
  final DateTime createdAt;
  @override
  final String endpointId;
  @override
  final String id;
  @override
  final String title;
  final Map<String, String> _headers;
  @override
  @JsonKey()
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  final String? jsonBodyRaw;
  @override
  final String? textBody;
  @override
  @JsonKey()
  final int internalUrgency;
  @override
  final String? imageUrl;
  @override
  final String type;
  @override
  final String? subType;
  final List<String> _urls;
  @override
  @JsonKey()
  List<String> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  final Map<String, String>? _extraData;
  @override
  Map<String, String>? get extraData {
    final value = _extraData;
    if (value == null) return null;
    if (_extraData is EqualUnmodifiableMapView) return _extraData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'NotificationEntry(userId: $userId, createdAt: $createdAt, endpointId: $endpointId, id: $id, title: $title, headers: $headers, jsonBodyRaw: $jsonBodyRaw, textBody: $textBody, internalUrgency: $internalUrgency, imageUrl: $imageUrl, type: $type, subType: $subType, urls: $urls, extraData: $extraData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationEntry &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.endpointId, endpointId) ||
                other.endpointId == endpointId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.jsonBodyRaw, jsonBodyRaw) ||
                other.jsonBodyRaw == jsonBodyRaw) &&
            (identical(other.textBody, textBody) ||
                other.textBody == textBody) &&
            (identical(other.internalUrgency, internalUrgency) ||
                other.internalUrgency == internalUrgency) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.subType, subType) || other.subType == subType) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            const DeepCollectionEquality()
                .equals(other._extraData, _extraData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      createdAt,
      endpointId,
      id,
      title,
      const DeepCollectionEquality().hash(_headers),
      jsonBodyRaw,
      textBody,
      internalUrgency,
      imageUrl,
      type,
      subType,
      const DeepCollectionEquality().hash(_urls),
      const DeepCollectionEquality().hash(_extraData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationEntryCopyWith<_$_NotificationEntry> get copyWith =>
      __$$_NotificationEntryCopyWithImpl<_$_NotificationEntry>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationEntryToJson(
      this,
    );
  }
}

abstract class _NotificationEntry implements NotificationEntry {
  factory _NotificationEntry(
      {required final String userId,
      required final DateTime createdAt,
      required final String endpointId,
      required final String id,
      required final String title,
      final Map<String, String> headers,
      final String? jsonBodyRaw,
      final String? textBody,
      final int internalUrgency,
      final String? imageUrl,
      required final String type,
      final String? subType,
      final List<String> urls,
      final Map<String, String>? extraData}) = _$_NotificationEntry;

  factory _NotificationEntry.fromJson(Map<String, dynamic> json) =
      _$_NotificationEntry.fromJson;

  @override
  String get userId;
  @override
  DateTime get createdAt;
  @override
  String get endpointId;
  @override
  String get id;
  @override
  String get title;
  @override
  Map<String, String> get headers;
  @override
  String? get jsonBodyRaw;
  @override
  String? get textBody;
  @override
  int get internalUrgency;
  @override
  String? get imageUrl;
  @override
  String get type;
  @override
  String? get subType;
  @override
  List<String> get urls;
  @override
  Map<String, String>? get extraData;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationEntryCopyWith<_$_NotificationEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRequestData _$UserRequestDataFromJson(Map<String, dynamic> json) {
  return _UserRequestData.fromJson(json);
}

/// @nodoc
mixin _$UserRequestData {
  String get userId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get endpointId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  Map<String, String> get headers => throw _privateConstructorUsedError;
  String? get jsonBodyRaw => throw _privateConstructorUsedError;
  String? get overrideTitle => throw _privateConstructorUsedError;
  String? get overrideBody => throw _privateConstructorUsedError;
  int? get overrideUrgency => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRequestDataCopyWith<UserRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestDataCopyWith<$Res> {
  factory $UserRequestDataCopyWith(
          UserRequestData value, $Res Function(UserRequestData) then) =
      _$UserRequestDataCopyWithImpl<$Res, UserRequestData>;
  @useResult
  $Res call(
      {String userId,
      DateTime createdAt,
      String endpointId,
      String id,
      Map<String, String> headers,
      String? jsonBodyRaw,
      String? overrideTitle,
      String? overrideBody,
      int? overrideUrgency});
}

/// @nodoc
class _$UserRequestDataCopyWithImpl<$Res, $Val extends UserRequestData>
    implements $UserRequestDataCopyWith<$Res> {
  _$UserRequestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? createdAt = null,
    Object? endpointId = null,
    Object? id = null,
    Object? headers = null,
    Object? jsonBodyRaw = freezed,
    Object? overrideTitle = freezed,
    Object? overrideBody = freezed,
    Object? overrideUrgency = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endpointId: null == endpointId
          ? _value.endpointId
          : endpointId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      jsonBodyRaw: freezed == jsonBodyRaw
          ? _value.jsonBodyRaw
          : jsonBodyRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      overrideTitle: freezed == overrideTitle
          ? _value.overrideTitle
          : overrideTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overrideBody: freezed == overrideBody
          ? _value.overrideBody
          : overrideBody // ignore: cast_nullable_to_non_nullable
              as String?,
      overrideUrgency: freezed == overrideUrgency
          ? _value.overrideUrgency
          : overrideUrgency // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserRequestDataCopyWith<$Res>
    implements $UserRequestDataCopyWith<$Res> {
  factory _$$_UserRequestDataCopyWith(
          _$_UserRequestData value, $Res Function(_$_UserRequestData) then) =
      __$$_UserRequestDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      DateTime createdAt,
      String endpointId,
      String id,
      Map<String, String> headers,
      String? jsonBodyRaw,
      String? overrideTitle,
      String? overrideBody,
      int? overrideUrgency});
}

/// @nodoc
class __$$_UserRequestDataCopyWithImpl<$Res>
    extends _$UserRequestDataCopyWithImpl<$Res, _$_UserRequestData>
    implements _$$_UserRequestDataCopyWith<$Res> {
  __$$_UserRequestDataCopyWithImpl(
      _$_UserRequestData _value, $Res Function(_$_UserRequestData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? createdAt = null,
    Object? endpointId = null,
    Object? id = null,
    Object? headers = null,
    Object? jsonBodyRaw = freezed,
    Object? overrideTitle = freezed,
    Object? overrideBody = freezed,
    Object? overrideUrgency = freezed,
  }) {
    return _then(_$_UserRequestData(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endpointId: null == endpointId
          ? _value.endpointId
          : endpointId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      jsonBodyRaw: freezed == jsonBodyRaw
          ? _value.jsonBodyRaw
          : jsonBodyRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      overrideTitle: freezed == overrideTitle
          ? _value.overrideTitle
          : overrideTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      overrideBody: freezed == overrideBody
          ? _value.overrideBody
          : overrideBody // ignore: cast_nullable_to_non_nullable
              as String?,
      overrideUrgency: freezed == overrideUrgency
          ? _value.overrideUrgency
          : overrideUrgency // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRequestData implements _UserRequestData {
  _$_UserRequestData(
      {required this.userId,
      required this.createdAt,
      required this.endpointId,
      required this.id,
      final Map<String, String> headers = const <String, String>{},
      this.jsonBodyRaw,
      this.overrideTitle,
      this.overrideBody,
      this.overrideUrgency})
      : _headers = headers;

  factory _$_UserRequestData.fromJson(Map<String, dynamic> json) =>
      _$$_UserRequestDataFromJson(json);

  @override
  final String userId;
  @override
  final DateTime createdAt;
  @override
  final String endpointId;
  @override
  final String id;
  final Map<String, String> _headers;
  @override
  @JsonKey()
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  final String? jsonBodyRaw;
  @override
  final String? overrideTitle;
  @override
  final String? overrideBody;
  @override
  final int? overrideUrgency;

  @override
  String toString() {
    return 'UserRequestData(userId: $userId, createdAt: $createdAt, endpointId: $endpointId, id: $id, headers: $headers, jsonBodyRaw: $jsonBodyRaw, overrideTitle: $overrideTitle, overrideBody: $overrideBody, overrideUrgency: $overrideUrgency)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRequestData &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.endpointId, endpointId) ||
                other.endpointId == endpointId) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.jsonBodyRaw, jsonBodyRaw) ||
                other.jsonBodyRaw == jsonBodyRaw) &&
            (identical(other.overrideTitle, overrideTitle) ||
                other.overrideTitle == overrideTitle) &&
            (identical(other.overrideBody, overrideBody) ||
                other.overrideBody == overrideBody) &&
            (identical(other.overrideUrgency, overrideUrgency) ||
                other.overrideUrgency == overrideUrgency));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      createdAt,
      endpointId,
      id,
      const DeepCollectionEquality().hash(_headers),
      jsonBodyRaw,
      overrideTitle,
      overrideBody,
      overrideUrgency);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRequestDataCopyWith<_$_UserRequestData> get copyWith =>
      __$$_UserRequestDataCopyWithImpl<_$_UserRequestData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRequestDataToJson(
      this,
    );
  }
}

abstract class _UserRequestData implements UserRequestData {
  factory _UserRequestData(
      {required final String userId,
      required final DateTime createdAt,
      required final String endpointId,
      required final String id,
      final Map<String, String> headers,
      final String? jsonBodyRaw,
      final String? overrideTitle,
      final String? overrideBody,
      final int? overrideUrgency}) = _$_UserRequestData;

  factory _UserRequestData.fromJson(Map<String, dynamic> json) =
      _$_UserRequestData.fromJson;

  @override
  String get userId;
  @override
  DateTime get createdAt;
  @override
  String get endpointId;
  @override
  String get id;
  @override
  Map<String, String> get headers;
  @override
  String? get jsonBodyRaw;
  @override
  String? get overrideTitle;
  @override
  String? get overrideBody;
  @override
  int? get overrideUrgency;
  @override
  @JsonKey(ignore: true)
  _$$_UserRequestDataCopyWith<_$_UserRequestData> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) {
  return _NotificationData.fromJson(json);
}

/// @nodoc
mixin _$NotificationData {
  String get title => throw _privateConstructorUsedError;
  Map<String, String> get headers => throw _privateConstructorUsedError;
  String? get jsonBodyRaw => throw _privateConstructorUsedError;
  String? get textBody => throw _privateConstructorUsedError;
  int get internalUrgency => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get subType => throw _privateConstructorUsedError;
  List<String> get urls => throw _privateConstructorUsedError;
  Map<String, String>? get extraData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDataCopyWith<NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDataCopyWith<$Res> {
  factory $NotificationDataCopyWith(
          NotificationData value, $Res Function(NotificationData) then) =
      _$NotificationDataCopyWithImpl<$Res, NotificationData>;
  @useResult
  $Res call(
      {String title,
      Map<String, String> headers,
      String? jsonBodyRaw,
      String? textBody,
      int internalUrgency,
      String? imageUrl,
      String? subType,
      List<String> urls,
      Map<String, String>? extraData});
}

/// @nodoc
class _$NotificationDataCopyWithImpl<$Res, $Val extends NotificationData>
    implements $NotificationDataCopyWith<$Res> {
  _$NotificationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? headers = null,
    Object? jsonBodyRaw = freezed,
    Object? textBody = freezed,
    Object? internalUrgency = null,
    Object? imageUrl = freezed,
    Object? subType = freezed,
    Object? urls = null,
    Object? extraData = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      jsonBodyRaw: freezed == jsonBodyRaw
          ? _value.jsonBodyRaw
          : jsonBodyRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      textBody: freezed == textBody
          ? _value.textBody
          : textBody // ignore: cast_nullable_to_non_nullable
              as String?,
      internalUrgency: null == internalUrgency
          ? _value.internalUrgency
          : internalUrgency // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extraData: freezed == extraData
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationDataCopyWith<$Res>
    implements $NotificationDataCopyWith<$Res> {
  factory _$$_NotificationDataCopyWith(
          _$_NotificationData value, $Res Function(_$_NotificationData) then) =
      __$$_NotificationDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      Map<String, String> headers,
      String? jsonBodyRaw,
      String? textBody,
      int internalUrgency,
      String? imageUrl,
      String? subType,
      List<String> urls,
      Map<String, String>? extraData});
}

/// @nodoc
class __$$_NotificationDataCopyWithImpl<$Res>
    extends _$NotificationDataCopyWithImpl<$Res, _$_NotificationData>
    implements _$$_NotificationDataCopyWith<$Res> {
  __$$_NotificationDataCopyWithImpl(
      _$_NotificationData _value, $Res Function(_$_NotificationData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? headers = null,
    Object? jsonBodyRaw = freezed,
    Object? textBody = freezed,
    Object? internalUrgency = null,
    Object? imageUrl = freezed,
    Object? subType = freezed,
    Object? urls = null,
    Object? extraData = freezed,
  }) {
    return _then(_$_NotificationData(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      jsonBodyRaw: freezed == jsonBodyRaw
          ? _value.jsonBodyRaw
          : jsonBodyRaw // ignore: cast_nullable_to_non_nullable
              as String?,
      textBody: freezed == textBody
          ? _value.textBody
          : textBody // ignore: cast_nullable_to_non_nullable
              as String?,
      internalUrgency: null == internalUrgency
          ? _value.internalUrgency
          : internalUrgency // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      subType: freezed == subType
          ? _value.subType
          : subType // ignore: cast_nullable_to_non_nullable
              as String?,
      urls: null == urls
          ? _value._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      extraData: freezed == extraData
          ? _value._extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationData implements _NotificationData {
  _$_NotificationData(
      {required this.title,
      final Map<String, String> headers = const <String, String>{},
      this.jsonBodyRaw,
      this.textBody,
      this.internalUrgency = 0,
      this.imageUrl,
      this.subType,
      final List<String> urls = const <String>[],
      final Map<String, String>? extraData})
      : _headers = headers,
        _urls = urls,
        _extraData = extraData;

  factory _$_NotificationData.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationDataFromJson(json);

  @override
  final String title;
  final Map<String, String> _headers;
  @override
  @JsonKey()
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  final String? jsonBodyRaw;
  @override
  final String? textBody;
  @override
  @JsonKey()
  final int internalUrgency;
  @override
  final String? imageUrl;
  @override
  final String? subType;
  final List<String> _urls;
  @override
  @JsonKey()
  List<String> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  final Map<String, String>? _extraData;
  @override
  Map<String, String>? get extraData {
    final value = _extraData;
    if (value == null) return null;
    if (_extraData is EqualUnmodifiableMapView) return _extraData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'NotificationData(title: $title, headers: $headers, jsonBodyRaw: $jsonBodyRaw, textBody: $textBody, internalUrgency: $internalUrgency, imageUrl: $imageUrl, subType: $subType, urls: $urls, extraData: $extraData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationData &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.jsonBodyRaw, jsonBodyRaw) ||
                other.jsonBodyRaw == jsonBodyRaw) &&
            (identical(other.textBody, textBody) ||
                other.textBody == textBody) &&
            (identical(other.internalUrgency, internalUrgency) ||
                other.internalUrgency == internalUrgency) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.subType, subType) || other.subType == subType) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            const DeepCollectionEquality()
                .equals(other._extraData, _extraData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(_headers),
      jsonBodyRaw,
      textBody,
      internalUrgency,
      imageUrl,
      subType,
      const DeepCollectionEquality().hash(_urls),
      const DeepCollectionEquality().hash(_extraData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationDataCopyWith<_$_NotificationData> get copyWith =>
      __$$_NotificationDataCopyWithImpl<_$_NotificationData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationDataToJson(
      this,
    );
  }
}

abstract class _NotificationData implements NotificationData {
  factory _NotificationData(
      {required final String title,
      final Map<String, String> headers,
      final String? jsonBodyRaw,
      final String? textBody,
      final int internalUrgency,
      final String? imageUrl,
      final String? subType,
      final List<String> urls,
      final Map<String, String>? extraData}) = _$_NotificationData;

  factory _NotificationData.fromJson(Map<String, dynamic> json) =
      _$_NotificationData.fromJson;

  @override
  String get title;
  @override
  Map<String, String> get headers;
  @override
  String? get jsonBodyRaw;
  @override
  String? get textBody;
  @override
  int get internalUrgency;
  @override
  String? get imageUrl;
  @override
  String? get subType;
  @override
  List<String> get urls;
  @override
  Map<String, String>? get extraData;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationDataCopyWith<_$_NotificationData> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRequestDataResponse _$UserRequestDataResponseFromJson(
    Map<String, dynamic> json) {
  return _UserRequestDataResponse.fromJson(json);
}

/// @nodoc
mixin _$UserRequestDataResponse {
  List<UserRequestData> get entries => throw _privateConstructorUsedError;
  Map<String, dynamic>? get lastEvaluatedKey =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRequestDataResponseCopyWith<UserRequestDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestDataResponseCopyWith<$Res> {
  factory $UserRequestDataResponseCopyWith(UserRequestDataResponse value,
          $Res Function(UserRequestDataResponse) then) =
      _$UserRequestDataResponseCopyWithImpl<$Res, UserRequestDataResponse>;
  @useResult
  $Res call(
      {List<UserRequestData> entries, Map<String, dynamic>? lastEvaluatedKey});
}

/// @nodoc
class _$UserRequestDataResponseCopyWithImpl<$Res,
        $Val extends UserRequestDataResponse>
    implements $UserRequestDataResponseCopyWith<$Res> {
  _$UserRequestDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
    Object? lastEvaluatedKey = freezed,
  }) {
    return _then(_value.copyWith(
      entries: null == entries
          ? _value.entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<UserRequestData>,
      lastEvaluatedKey: freezed == lastEvaluatedKey
          ? _value.lastEvaluatedKey
          : lastEvaluatedKey // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserRequestDataResponseCopyWith<$Res>
    implements $UserRequestDataResponseCopyWith<$Res> {
  factory _$$_UserRequestDataResponseCopyWith(_$_UserRequestDataResponse value,
          $Res Function(_$_UserRequestDataResponse) then) =
      __$$_UserRequestDataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserRequestData> entries, Map<String, dynamic>? lastEvaluatedKey});
}

/// @nodoc
class __$$_UserRequestDataResponseCopyWithImpl<$Res>
    extends _$UserRequestDataResponseCopyWithImpl<$Res,
        _$_UserRequestDataResponse>
    implements _$$_UserRequestDataResponseCopyWith<$Res> {
  __$$_UserRequestDataResponseCopyWithImpl(_$_UserRequestDataResponse _value,
      $Res Function(_$_UserRequestDataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entries = null,
    Object? lastEvaluatedKey = freezed,
  }) {
    return _then(_$_UserRequestDataResponse(
      entries: null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<UserRequestData>,
      lastEvaluatedKey: freezed == lastEvaluatedKey
          ? _value._lastEvaluatedKey
          : lastEvaluatedKey // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRequestDataResponse implements _UserRequestDataResponse {
  _$_UserRequestDataResponse(
      {required final List<UserRequestData> entries,
      final Map<String, dynamic>? lastEvaluatedKey})
      : _entries = entries,
        _lastEvaluatedKey = lastEvaluatedKey;

  factory _$_UserRequestDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserRequestDataResponseFromJson(json);

  final List<UserRequestData> _entries;
  @override
  List<UserRequestData> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  final Map<String, dynamic>? _lastEvaluatedKey;
  @override
  Map<String, dynamic>? get lastEvaluatedKey {
    final value = _lastEvaluatedKey;
    if (value == null) return null;
    if (_lastEvaluatedKey is EqualUnmodifiableMapView) return _lastEvaluatedKey;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'UserRequestDataResponse(entries: $entries, lastEvaluatedKey: $lastEvaluatedKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRequestDataResponse &&
            const DeepCollectionEquality().equals(other._entries, _entries) &&
            const DeepCollectionEquality()
                .equals(other._lastEvaluatedKey, _lastEvaluatedKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_entries),
      const DeepCollectionEquality().hash(_lastEvaluatedKey));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRequestDataResponseCopyWith<_$_UserRequestDataResponse>
      get copyWith =>
          __$$_UserRequestDataResponseCopyWithImpl<_$_UserRequestDataResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserRequestDataResponseToJson(
      this,
    );
  }
}

abstract class _UserRequestDataResponse implements UserRequestDataResponse {
  factory _UserRequestDataResponse(
          {required final List<UserRequestData> entries,
          final Map<String, dynamic>? lastEvaluatedKey}) =
      _$_UserRequestDataResponse;

  factory _UserRequestDataResponse.fromJson(Map<String, dynamic> json) =
      _$_UserRequestDataResponse.fromJson;

  @override
  List<UserRequestData> get entries;
  @override
  Map<String, dynamic>? get lastEvaluatedKey;
  @override
  @JsonKey(ignore: true)
  _$$_UserRequestDataResponseCopyWith<_$_UserRequestDataResponse>
      get copyWith => throw _privateConstructorUsedError;
}
