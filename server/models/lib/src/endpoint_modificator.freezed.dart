// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'endpoint_modificator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EndpointModificator _$EndpointModificatorFromJson(Map<String, dynamic> json) {
  return _EndpointModificator.fromJson(json);
}

/// @nodoc
mixin _$EndpointModificator {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EndpointModificatorCopyWith<EndpointModificator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndpointModificatorCopyWith<$Res> {
  factory $EndpointModificatorCopyWith(
          EndpointModificator value, $Res Function(EndpointModificator) then) =
      _$EndpointModificatorCopyWithImpl<$Res, EndpointModificator>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$EndpointModificatorCopyWithImpl<$Res, $Val extends EndpointModificator>
    implements $EndpointModificatorCopyWith<$Res> {
  _$EndpointModificatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EndpointModificatorCopyWith<$Res>
    implements $EndpointModificatorCopyWith<$Res> {
  factory _$$_EndpointModificatorCopyWith(_$_EndpointModificator value,
          $Res Function(_$_EndpointModificator) then) =
      __$$_EndpointModificatorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$_EndpointModificatorCopyWithImpl<$Res>
    extends _$EndpointModificatorCopyWithImpl<$Res, _$_EndpointModificator>
    implements _$$_EndpointModificatorCopyWith<$Res> {
  __$$_EndpointModificatorCopyWithImpl(_$_EndpointModificator _value,
      $Res Function(_$_EndpointModificator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_EndpointModificator(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EndpointModificator implements _EndpointModificator {
  _$_EndpointModificator({required this.id});

  factory _$_EndpointModificator.fromJson(Map<String, dynamic> json) =>
      _$$_EndpointModificatorFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'EndpointModificator(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EndpointModificator &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EndpointModificatorCopyWith<_$_EndpointModificator> get copyWith =>
      __$$_EndpointModificatorCopyWithImpl<_$_EndpointModificator>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EndpointModificatorToJson(
      this,
    );
  }
}

abstract class _EndpointModificator implements EndpointModificator {
  factory _EndpointModificator({required final String id}) =
      _$_EndpointModificator;

  factory _EndpointModificator.fromJson(Map<String, dynamic> json) =
      _$_EndpointModificator.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_EndpointModificatorCopyWith<_$_EndpointModificator> get copyWith =>
      throw _privateConstructorUsedError;
}
