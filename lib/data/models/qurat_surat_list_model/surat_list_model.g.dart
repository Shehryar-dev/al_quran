// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surat_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranSuratListModelImpl _$$QuranSuratListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuranSuratListModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      transliteration: json['transliteration'] as String? ?? '',
      translation: json['translation'] as String? ?? '',
      type: json['type'] as String? ?? '',
      totalVerses: (json['total_verses'] as num?)?.toInt() ?? 1,
      link: json['link'] as String? ?? '',
    );

Map<String, dynamic> _$$QuranSuratListModelImplToJson(
        _$QuranSuratListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'transliteration': instance.transliteration,
      'translation': instance.translation,
      'type': instance.type,
      'total_verses': instance.totalVerses,
      'link': instance.link,
    };
