// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'endpoint_definition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EndpointDefinition _$EndpointDefinitionFromJson(Map<String, dynamic> json) {
  return _EndpointDefinition.fromJson(json);
}

/// @nodoc
mixin _$EndpointDefinition {
  String get url => throw _privateConstructorUsedError;
  Map<String, String> get headers => throw _privateConstructorUsedError;
  List<EndpointModificator> get modificators =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EndpointDefinitionCopyWith<EndpointDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndpointDefinitionCopyWith<$Res> {
  factory $EndpointDefinitionCopyWith(
          EndpointDefinition value, $Res Function(EndpointDefinition) then) =
      _$EndpointDefinitionCopyWithImpl<$Res, EndpointDefinition>;
  @useResult
  $Res call(
      {String url,
      Map<String, String> headers,
      List<EndpointModificator> modificators});
}

/// @nodoc
class _$EndpointDefinitionCopyWithImpl<$Res, $Val extends EndpointDefinition>
    implements $EndpointDefinitionCopyWith<$Res> {
  _$EndpointDefinitionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? headers = null,
    Object? modificators = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      modificators: null == modificators
          ? _value.modificators
          : modificators // ignore: cast_nullable_to_non_nullable
              as List<EndpointModificator>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EndpointDefinitionCopyWith<$Res>
    implements $EndpointDefinitionCopyWith<$Res> {
  factory _$$_EndpointDefinitionCopyWith(_$_EndpointDefinition value,
          $Res Function(_$_EndpointDefinition) then) =
      __$$_EndpointDefinitionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String url,
      Map<String, String> headers,
      List<EndpointModificator> modificators});
}

/// @nodoc
class __$$_EndpointDefinitionCopyWithImpl<$Res>
    extends _$EndpointDefinitionCopyWithImpl<$Res, _$_EndpointDefinition>
    implements _$$_EndpointDefinitionCopyWith<$Res> {
  __$$_EndpointDefinitionCopyWithImpl(
      _$_EndpointDefinition _value, $Res Function(_$_EndpointDefinition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? headers = null,
    Object? modificators = null,
  }) {
    return _then(_$_EndpointDefinition(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      modificators: null == modificators
          ? _value._modificators
          : modificators // ignore: cast_nullable_to_non_nullable
              as List<EndpointModificator>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EndpointDefinition implements _EndpointDefinition {
  _$_EndpointDefinition(
      {required this.url,
      required final Map<String, String> headers,
      required final List<EndpointModificator> modificators})
      : _headers = headers,
        _modificators = modificators;

  factory _$_EndpointDefinition.fromJson(Map<String, dynamic> json) =>
      _$$_EndpointDefinitionFromJson(json);

  @override
  final String url;
  final Map<String, String> _headers;
  @override
  Map<String, String> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  final List<EndpointModificator> _modificators;
  @override
  List<EndpointModificator> get modificators {
    if (_modificators is EqualUnmodifiableListView) return _modificators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modificators);
  }

  @override
  String toString() {
    return 'EndpointDefinition(url: $url, headers: $headers, modificators: $modificators)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EndpointDefinition &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            const DeepCollectionEquality()
                .equals(other._modificators, _modificators));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      url,
      const DeepCollectionEquality().hash(_headers),
      const DeepCollectionEquality().hash(_modificators));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EndpointDefinitionCopyWith<_$_EndpointDefinition> get copyWith =>
      __$$_EndpointDefinitionCopyWithImpl<_$_EndpointDefinition>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EndpointDefinitionToJson(
      this,
    );
  }
}

abstract class _EndpointDefinition implements EndpointDefinition {
  factory _EndpointDefinition(
          {required final String url,
          required final Map<String, String> headers,
          required final List<EndpointModificator> modificators}) =
      _$_EndpointDefinition;

  factory _EndpointDefinition.fromJson(Map<String, dynamic> json) =
      _$_EndpointDefinition.fromJson;

  @override
  String get url;
  @override
  Map<String, String> get headers;
  @override
  List<EndpointModificator> get modificators;
  @override
  @JsonKey(ignore: true)
  _$$_EndpointDefinitionCopyWith<_$_EndpointDefinition> get copyWith =>
      throw _privateConstructorUsedError;
}
