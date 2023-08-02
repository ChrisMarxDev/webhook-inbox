// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_endpoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEndpoint _$UserEndpointFromJson(Map<String, dynamic> json) {
  return _UserEndpoint.fromJson(json);
}

/// @nodoc
mixin _$UserEndpoint {
  String get userId => throw _privateConstructorUsedError;
  String get endpointId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEndpointCopyWith<UserEndpoint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEndpointCopyWith<$Res> {
  factory $UserEndpointCopyWith(
          UserEndpoint value, $Res Function(UserEndpoint) then) =
      _$UserEndpointCopyWithImpl<$Res, UserEndpoint>;
  @useResult
  $Res call({String userId, String endpointId, DateTime createdAt});
}

/// @nodoc
class _$UserEndpointCopyWithImpl<$Res, $Val extends UserEndpoint>
    implements $UserEndpointCopyWith<$Res> {
  _$UserEndpointCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? endpointId = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      endpointId: null == endpointId
          ? _value.endpointId
          : endpointId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserEndpointCopyWith<$Res>
    implements $UserEndpointCopyWith<$Res> {
  factory _$$_UserEndpointCopyWith(
          _$_UserEndpoint value, $Res Function(_$_UserEndpoint) then) =
      __$$_UserEndpointCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String endpointId, DateTime createdAt});
}

/// @nodoc
class __$$_UserEndpointCopyWithImpl<$Res>
    extends _$UserEndpointCopyWithImpl<$Res, _$_UserEndpoint>
    implements _$$_UserEndpointCopyWith<$Res> {
  __$$_UserEndpointCopyWithImpl(
      _$_UserEndpoint _value, $Res Function(_$_UserEndpoint) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? endpointId = null,
    Object? createdAt = null,
  }) {
    return _then(_$_UserEndpoint(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      endpointId: null == endpointId
          ? _value.endpointId
          : endpointId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEndpoint implements _UserEndpoint {
  _$_UserEndpoint(
      {required this.userId,
      required this.endpointId,
      required this.createdAt});

  factory _$_UserEndpoint.fromJson(Map<String, dynamic> json) =>
      _$$_UserEndpointFromJson(json);

  @override
  final String userId;
  @override
  final String endpointId;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'UserEndpoint(userId: $userId, endpointId: $endpointId, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEndpoint &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.endpointId, endpointId) ||
                other.endpointId == endpointId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, endpointId, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEndpointCopyWith<_$_UserEndpoint> get copyWith =>
      __$$_UserEndpointCopyWithImpl<_$_UserEndpoint>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEndpointToJson(
      this,
    );
  }
}

abstract class _UserEndpoint implements UserEndpoint {
  factory _UserEndpoint(
      {required final String userId,
      required final String endpointId,
      required final DateTime createdAt}) = _$_UserEndpoint;

  factory _UserEndpoint.fromJson(Map<String, dynamic> json) =
      _$_UserEndpoint.fromJson;

  @override
  String get userId;
  @override
  String get endpointId;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserEndpointCopyWith<_$_UserEndpoint> get copyWith =>
      throw _privateConstructorUsedError;
}
