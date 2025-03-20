// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asma_al_husna.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AsmaAlHusnaModel _$AsmaAlHusnaModelFromJson(Map<String, dynamic> json) {
  return _AsmaAlHusnaModel.fromJson(json);
}

/// @nodoc
mixin _$AsmaAlHusnaModel {
  int get code => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  List<AllAsmaAlHusna> get data => throw _privateConstructorUsedError;

  /// Serializes this AsmaAlHusnaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AsmaAlHusnaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AsmaAlHusnaModelCopyWith<AsmaAlHusnaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsmaAlHusnaModelCopyWith<$Res> {
  factory $AsmaAlHusnaModelCopyWith(
          AsmaAlHusnaModel value, $Res Function(AsmaAlHusnaModel) then) =
      _$AsmaAlHusnaModelCopyWithImpl<$Res, AsmaAlHusnaModel>;
  @useResult
  $Res call({int code, String status, List<AllAsmaAlHusna> data});
}

/// @nodoc
class _$AsmaAlHusnaModelCopyWithImpl<$Res, $Val extends AsmaAlHusnaModel>
    implements $AsmaAlHusnaModelCopyWith<$Res> {
  _$AsmaAlHusnaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AsmaAlHusnaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AllAsmaAlHusna>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AsmaAlHusnaModelImplCopyWith<$Res>
    implements $AsmaAlHusnaModelCopyWith<$Res> {
  factory _$$AsmaAlHusnaModelImplCopyWith(_$AsmaAlHusnaModelImpl value,
          $Res Function(_$AsmaAlHusnaModelImpl) then) =
      __$$AsmaAlHusnaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String status, List<AllAsmaAlHusna> data});
}

/// @nodoc
class __$$AsmaAlHusnaModelImplCopyWithImpl<$Res>
    extends _$AsmaAlHusnaModelCopyWithImpl<$Res, _$AsmaAlHusnaModelImpl>
    implements _$$AsmaAlHusnaModelImplCopyWith<$Res> {
  __$$AsmaAlHusnaModelImplCopyWithImpl(_$AsmaAlHusnaModelImpl _value,
      $Res Function(_$AsmaAlHusnaModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AsmaAlHusnaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$AsmaAlHusnaModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AllAsmaAlHusna>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AsmaAlHusnaModelImpl implements _AsmaAlHusnaModel {
  const _$AsmaAlHusnaModelImpl(
      {this.code = 0,
      this.status = "empty status",
      final List<AllAsmaAlHusna> data = const []})
      : _data = data;

  factory _$AsmaAlHusnaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AsmaAlHusnaModelImplFromJson(json);

  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final String status;
  final List<AllAsmaAlHusna> _data;
  @override
  @JsonKey()
  List<AllAsmaAlHusna> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AsmaAlHusnaModel(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsmaAlHusnaModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, status, const DeepCollectionEquality().hash(_data));

  /// Create a copy of AsmaAlHusnaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AsmaAlHusnaModelImplCopyWith<_$AsmaAlHusnaModelImpl> get copyWith =>
      __$$AsmaAlHusnaModelImplCopyWithImpl<_$AsmaAlHusnaModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AsmaAlHusnaModelImplToJson(
      this,
    );
  }
}

abstract class _AsmaAlHusnaModel implements AsmaAlHusnaModel {
  const factory _AsmaAlHusnaModel(
      {final int code,
      final String status,
      final List<AllAsmaAlHusna> data}) = _$AsmaAlHusnaModelImpl;

  factory _AsmaAlHusnaModel.fromJson(Map<String, dynamic> json) =
      _$AsmaAlHusnaModelImpl.fromJson;

  @override
  int get code;
  @override
  String get status;
  @override
  List<AllAsmaAlHusna> get data;

  /// Create a copy of AsmaAlHusnaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AsmaAlHusnaModelImplCopyWith<_$AsmaAlHusnaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AllAsmaAlHusna _$AllAsmaAlHusnaFromJson(Map<String, dynamic> json) {
  return _AllAsmaAlHusna.fromJson(json);
}

/// @nodoc
mixin _$AllAsmaAlHusna {
  String get name => throw _privateConstructorUsedError;
  String get transliteration => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  Meaning get en => throw _privateConstructorUsedError;

  /// Serializes this AllAsmaAlHusna to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AllAsmaAlHusna
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllAsmaAlHusnaCopyWith<AllAsmaAlHusna> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllAsmaAlHusnaCopyWith<$Res> {
  factory $AllAsmaAlHusnaCopyWith(
          AllAsmaAlHusna value, $Res Function(AllAsmaAlHusna) then) =
      _$AllAsmaAlHusnaCopyWithImpl<$Res, AllAsmaAlHusna>;
  @useResult
  $Res call({String name, String transliteration, int number, Meaning en});

  $MeaningCopyWith<$Res> get en;
}

/// @nodoc
class _$AllAsmaAlHusnaCopyWithImpl<$Res, $Val extends AllAsmaAlHusna>
    implements $AllAsmaAlHusnaCopyWith<$Res> {
  _$AllAsmaAlHusnaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AllAsmaAlHusna
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? transliteration = null,
    Object? number = null,
    Object? en = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as Meaning,
    ) as $Val);
  }

  /// Create a copy of AllAsmaAlHusna
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeaningCopyWith<$Res> get en {
    return $MeaningCopyWith<$Res>(_value.en, (value) {
      return _then(_value.copyWith(en: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllAsmaAlHusnaImplCopyWith<$Res>
    implements $AllAsmaAlHusnaCopyWith<$Res> {
  factory _$$AllAsmaAlHusnaImplCopyWith(_$AllAsmaAlHusnaImpl value,
          $Res Function(_$AllAsmaAlHusnaImpl) then) =
      __$$AllAsmaAlHusnaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String transliteration, int number, Meaning en});

  @override
  $MeaningCopyWith<$Res> get en;
}

/// @nodoc
class __$$AllAsmaAlHusnaImplCopyWithImpl<$Res>
    extends _$AllAsmaAlHusnaCopyWithImpl<$Res, _$AllAsmaAlHusnaImpl>
    implements _$$AllAsmaAlHusnaImplCopyWith<$Res> {
  __$$AllAsmaAlHusnaImplCopyWithImpl(
      _$AllAsmaAlHusnaImpl _value, $Res Function(_$AllAsmaAlHusnaImpl) _then)
      : super(_value, _then);

  /// Create a copy of AllAsmaAlHusna
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? transliteration = null,
    Object? number = null,
    Object? en = null,
  }) {
    return _then(_$AllAsmaAlHusnaImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as Meaning,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllAsmaAlHusnaImpl implements _AllAsmaAlHusna {
  const _$AllAsmaAlHusnaImpl(
      {this.name = "",
      this.transliteration = "",
      this.number = 0,
      this.en = const Meaning(meaning: "")});

  factory _$AllAsmaAlHusnaImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllAsmaAlHusnaImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String transliteration;
  @override
  @JsonKey()
  final int number;
  @override
  @JsonKey()
  final Meaning en;

  @override
  String toString() {
    return 'AllAsmaAlHusna(name: $name, transliteration: $transliteration, number: $number, en: $en)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllAsmaAlHusnaImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, transliteration, number, en);

  /// Create a copy of AllAsmaAlHusna
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllAsmaAlHusnaImplCopyWith<_$AllAsmaAlHusnaImpl> get copyWith =>
      __$$AllAsmaAlHusnaImplCopyWithImpl<_$AllAsmaAlHusnaImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllAsmaAlHusnaImplToJson(
      this,
    );
  }
}

abstract class _AllAsmaAlHusna implements AllAsmaAlHusna {
  const factory _AllAsmaAlHusna(
      {final String name,
      final String transliteration,
      final int number,
      final Meaning en}) = _$AllAsmaAlHusnaImpl;

  factory _AllAsmaAlHusna.fromJson(Map<String, dynamic> json) =
      _$AllAsmaAlHusnaImpl.fromJson;

  @override
  String get name;
  @override
  String get transliteration;
  @override
  int get number;
  @override
  Meaning get en;

  /// Create a copy of AllAsmaAlHusna
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllAsmaAlHusnaImplCopyWith<_$AllAsmaAlHusnaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meaning _$MeaningFromJson(Map<String, dynamic> json) {
  return _Meaning.fromJson(json);
}

/// @nodoc
mixin _$Meaning {
  String get meaning => throw _privateConstructorUsedError;

  /// Serializes this Meaning to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meaning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MeaningCopyWith<Meaning> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeaningCopyWith<$Res> {
  factory $MeaningCopyWith(Meaning value, $Res Function(Meaning) then) =
      _$MeaningCopyWithImpl<$Res, Meaning>;
  @useResult
  $Res call({String meaning});
}

/// @nodoc
class _$MeaningCopyWithImpl<$Res, $Val extends Meaning>
    implements $MeaningCopyWith<$Res> {
  _$MeaningCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meaning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meaning = null,
  }) {
    return _then(_value.copyWith(
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeaningImplCopyWith<$Res> implements $MeaningCopyWith<$Res> {
  factory _$$MeaningImplCopyWith(
          _$MeaningImpl value, $Res Function(_$MeaningImpl) then) =
      __$$MeaningImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String meaning});
}

/// @nodoc
class __$$MeaningImplCopyWithImpl<$Res>
    extends _$MeaningCopyWithImpl<$Res, _$MeaningImpl>
    implements _$$MeaningImplCopyWith<$Res> {
  __$$MeaningImplCopyWithImpl(
      _$MeaningImpl _value, $Res Function(_$MeaningImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meaning
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meaning = null,
  }) {
    return _then(_$MeaningImpl(
      meaning: null == meaning
          ? _value.meaning
          : meaning // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeaningImpl implements _Meaning {
  const _$MeaningImpl({this.meaning = ""});

  factory _$MeaningImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeaningImplFromJson(json);

  @override
  @JsonKey()
  final String meaning;

  @override
  String toString() {
    return 'Meaning(meaning: $meaning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeaningImpl &&
            (identical(other.meaning, meaning) || other.meaning == meaning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, meaning);

  /// Create a copy of Meaning
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MeaningImplCopyWith<_$MeaningImpl> get copyWith =>
      __$$MeaningImplCopyWithImpl<_$MeaningImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeaningImplToJson(
      this,
    );
  }
}

abstract class _Meaning implements Meaning {
  const factory _Meaning({final String meaning}) = _$MeaningImpl;

  factory _Meaning.fromJson(Map<String, dynamic> json) = _$MeaningImpl.fromJson;

  @override
  String get meaning;

  /// Create a copy of Meaning
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MeaningImplCopyWith<_$MeaningImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
