// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_single_surat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranSingleSurahImpl _$$QuranSingleSurahImplFromJson(
        Map<String, dynamic> json) =>
    _$QuranSingleSurahImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      transliteration: json['transliteration'] as String? ?? '',
      translation: json['translation'] as String? ?? '',
      type: json['type'] as String? ?? '',
      totalVerses: (json['totalVerses'] as num?)?.toInt() ?? 0,
      verses: (json['verses'] as List<dynamic>?)
              ?.map((e) => Verse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$QuranSingleSurahImplToJson(
        _$QuranSingleSurahImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'transliteration': instance.transliteration,
      'translation': instance.translation,
      'type': instance.type,
      'totalVerses': instance.totalVerses,
      'verses': instance.verses,
    };

_$VerseImpl _$$VerseImplFromJson(Map<String, dynamic> json) => _$VerseImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      text: json['text'] as String? ?? '',
      translation: json['translation'] as String? ?? '',
      transliteration: json['transliteration'] as String? ?? '',
    );

Map<String, dynamic> _$$VerseImplToJson(_$VerseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'translation': instance.translation,
      'transliteration': instance.transliteration,
    };
