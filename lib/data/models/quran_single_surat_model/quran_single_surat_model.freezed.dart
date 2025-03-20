// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran_single_surat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuranSingleSurah _$QuranSingleSurahFromJson(Map<String, dynamic> json) {
  return _QuranSingleSurah.fromJson(json);
}

/// @nodoc
mixin _$QuranSingleSurah {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get transliteration => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get totalVerses => throw _privateConstructorUsedError;
  List<Verse> get verses => throw _privateConstructorUsedError;

  /// Serializes this QuranSingleSurah to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QuranSingleSurah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranSingleSurahCopyWith<QuranSingleSurah> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranSingleSurahCopyWith<$Res> {
  factory $QuranSingleSurahCopyWith(
          QuranSingleSurah value, $Res Function(QuranSingleSurah) then) =
      _$QuranSingleSurahCopyWithImpl<$Res, QuranSingleSurah>;
  @useResult
  $Res call(
      {int id,
      String name,
      String transliteration,
      String translation,
      String type,
      int totalVerses,
      List<Verse> verses});
}

/// @nodoc
class _$QuranSingleSurahCopyWithImpl<$Res, $Val extends QuranSingleSurah>
    implements $QuranSingleSurahCopyWith<$Res> {
  _$QuranSingleSurahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QuranSingleSurah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? transliteration = null,
    Object? translation = null,
    Object? type = null,
    Object? totalVerses = null,
    Object? verses = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      totalVerses: null == totalVerses
          ? _value.totalVerses
          : totalVerses // ignore: cast_nullable_to_non_nullable
              as int,
      verses: null == verses
          ? _value.verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<Verse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuranSingleSurahImplCopyWith<$Res>
    implements $QuranSingleSurahCopyWith<$Res> {
  factory _$$QuranSingleSurahImplCopyWith(_$QuranSingleSurahImpl value,
          $Res Function(_$QuranSingleSurahImpl) then) =
      __$$QuranSingleSurahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String transliteration,
      String translation,
      String type,
      int totalVerses,
      List<Verse> verses});
}

/// @nodoc
class __$$QuranSingleSurahImplCopyWithImpl<$Res>
    extends _$QuranSingleSurahCopyWithImpl<$Res, _$QuranSingleSurahImpl>
    implements _$$QuranSingleSurahImplCopyWith<$Res> {
  __$$QuranSingleSurahImplCopyWithImpl(_$QuranSingleSurahImpl _value,
      $Res Function(_$QuranSingleSurahImpl) _then)
      : super(_value, _then);

  /// Create a copy of QuranSingleSurah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? transliteration = null,
    Object? translation = null,
    Object? type = null,
    Object? totalVerses = null,
    Object? verses = null,
  }) {
    return _then(_$QuranSingleSurahImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      totalVerses: null == totalVerses
          ? _value.totalVerses
          : totalVerses // ignore: cast_nullable_to_non_nullable
              as int,
      verses: null == verses
          ? _value._verses
          : verses // ignore: cast_nullable_to_non_nullable
              as List<Verse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranSingleSurahImpl implements _QuranSingleSurah {
  const _$QuranSingleSurahImpl(
      {this.id = 0,
      this.name = '',
      this.transliteration = '',
      this.translation = '',
      this.type = '',
      this.totalVerses = 0,
      final List<Verse> verses = const []})
      : _verses = verses;

  factory _$QuranSingleSurahImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranSingleSurahImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String transliteration;
  @override
  @JsonKey()
  final String translation;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final int totalVerses;
  final List<Verse> _verses;
  @override
  @JsonKey()
  List<Verse> get verses {
    if (_verses is EqualUnmodifiableListView) return _verses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_verses);
  }

  @override
  String toString() {
    return 'QuranSingleSurah(id: $id, name: $name, transliteration: $transliteration, translation: $translation, type: $type, totalVerses: $totalVerses, verses: $verses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranSingleSurahImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.totalVerses, totalVerses) ||
                other.totalVerses == totalVerses) &&
            const DeepCollectionEquality().equals(other._verses, _verses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      transliteration,
      translation,
      type,
      totalVerses,
      const DeepCollectionEquality().hash(_verses));

  /// Create a copy of QuranSingleSurah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranSingleSurahImplCopyWith<_$QuranSingleSurahImpl> get copyWith =>
      __$$QuranSingleSurahImplCopyWithImpl<_$QuranSingleSurahImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranSingleSurahImplToJson(
      this,
    );
  }
}

abstract class _QuranSingleSurah implements QuranSingleSurah {
  const factory _QuranSingleSurah(
      {final int id,
      final String name,
      final String transliteration,
      final String translation,
      final String type,
      final int totalVerses,
      final List<Verse> verses}) = _$QuranSingleSurahImpl;

  factory _QuranSingleSurah.fromJson(Map<String, dynamic> json) =
      _$QuranSingleSurahImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get transliteration;
  @override
  String get translation;
  @override
  String get type;
  @override
  int get totalVerses;
  @override
  List<Verse> get verses;

  /// Create a copy of QuranSingleSurah
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranSingleSurahImplCopyWith<_$QuranSingleSurahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Verse _$VerseFromJson(Map<String, dynamic> json) {
  return _Verse.fromJson(json);
}

/// @nodoc
mixin _$Verse {
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;
  String get transliteration => throw _privateConstructorUsedError;

  /// Serializes this Verse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerseCopyWith<Verse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseCopyWith<$Res> {
  factory $VerseCopyWith(Verse value, $Res Function(Verse) then) =
      _$VerseCopyWithImpl<$Res, Verse>;
  @useResult
  $Res call({int id, String text, String translation, String transliteration});
}

/// @nodoc
class _$VerseCopyWithImpl<$Res, $Val extends Verse>
    implements $VerseCopyWith<$Res> {
  _$VerseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? translation = null,
    Object? transliteration = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerseImplCopyWith<$Res> implements $VerseCopyWith<$Res> {
  factory _$$VerseImplCopyWith(
          _$VerseImpl value, $Res Function(_$VerseImpl) then) =
      __$$VerseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String text, String translation, String transliteration});
}

/// @nodoc
class __$$VerseImplCopyWithImpl<$Res>
    extends _$VerseCopyWithImpl<$Res, _$VerseImpl>
    implements _$$VerseImplCopyWith<$Res> {
  __$$VerseImplCopyWithImpl(
      _$VerseImpl _value, $Res Function(_$VerseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? translation = null,
    Object? transliteration = null,
  }) {
    return _then(_$VerseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: null == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerseImpl implements _Verse {
  const _$VerseImpl(
      {this.id = 0,
      this.text = '',
      this.translation = '',
      this.transliteration = ''});

  factory _$VerseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerseImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final String translation;
  @override
  @JsonKey()
  final String transliteration;

  @override
  String toString() {
    return 'Verse(id: $id, text: $text, translation: $translation, transliteration: $transliteration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, text, translation, transliteration);

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerseImplCopyWith<_$VerseImpl> get copyWith =>
      __$$VerseImplCopyWithImpl<_$VerseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerseImplToJson(
      this,
    );
  }
}

abstract class _Verse implements Verse {
  const factory _Verse(
      {final int id,
      final String text,
      final String translation,
      final String transliteration}) = _$VerseImpl;

  factory _Verse.fromJson(Map<String, dynamic> json) = _$VerseImpl.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  String get translation;
  @override
  String get transliteration;

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerseImplCopyWith<_$VerseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
