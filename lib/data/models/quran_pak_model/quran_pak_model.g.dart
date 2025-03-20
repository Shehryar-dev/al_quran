// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_pak_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahModelImpl _$$SurahModelImplFromJson(Map<String, dynamic> json) =>
    _$SurahModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      transliteration: json['transliteration'] as String,
      translation: json['translation'] as String,
      type: json['type'] as String,
      total_verses: (json['total_verses'] as num).toInt(),
      verses: (json['verses'] as List<dynamic>)
          .map((e) => VerseModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SurahModelImplToJson(_$SurahModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'transliteration': instance.transliteration,
      'translation': instance.translation,
      'type': instance.type,
      'total_verses': instance.total_verses,
      'verses': instance.verses,
    };

_$VerseModelImpl _$$VerseModelImplFromJson(Map<String, dynamic> json) =>
    _$VerseModelImpl(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      translation: json['translation'] as String,
    );

Map<String, dynamic> _$$VerseModelImplToJson(_$VerseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'translation': instance.translation,
    };
