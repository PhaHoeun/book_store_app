// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) {
  return _SearchModel.fromJson(json);
}

/// @nodoc
mixin _$SearchModel {
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchModelCopyWith<SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchModelCopyWith<$Res> {
  factory $SearchModelCopyWith(
          SearchModel value, $Res Function(SearchModel) then) =
      _$SearchModelCopyWithImpl<$Res>;
  $Res call({String? title});
}

/// @nodoc
class _$SearchModelCopyWithImpl<$Res> implements $SearchModelCopyWith<$Res> {
  _$SearchModelCopyWithImpl(this._value, this._then);

  final SearchModel _value;
  // ignore: unused_field
  final $Res Function(SearchModel) _then;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchModelCopyWith<$Res>
    implements $SearchModelCopyWith<$Res> {
  factory _$$_SearchModelCopyWith(
          _$_SearchModel value, $Res Function(_$_SearchModel) then) =
      __$$_SearchModelCopyWithImpl<$Res>;
  @override
  $Res call({String? title});
}

/// @nodoc
class __$$_SearchModelCopyWithImpl<$Res> extends _$SearchModelCopyWithImpl<$Res>
    implements _$$_SearchModelCopyWith<$Res> {
  __$$_SearchModelCopyWithImpl(
      _$_SearchModel _value, $Res Function(_$_SearchModel) _then)
      : super(_value, (v) => _then(v as _$_SearchModel));

  @override
  _$_SearchModel get _value => super._value as _$_SearchModel;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$_SearchModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchModel implements _SearchModel {
  _$_SearchModel({this.title});

  factory _$_SearchModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchModelFromJson(json);

  @override
  final String? title;

  @override
  String toString() {
    return 'SearchModel(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchModel &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_SearchModelCopyWith<_$_SearchModel> get copyWith =>
      __$$_SearchModelCopyWithImpl<_$_SearchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchModelToJson(this);
  }
}

abstract class _SearchModel implements SearchModel {
  factory _SearchModel({final String? title}) = _$_SearchModel;

  factory _SearchModel.fromJson(Map<String, dynamic> json) =
      _$_SearchModel.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SearchModelCopyWith<_$_SearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
