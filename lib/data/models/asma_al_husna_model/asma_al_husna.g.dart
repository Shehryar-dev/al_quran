// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asma_al_husna.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AsmaAlHusnaModelImpl _$$AsmaAlHusnaModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AsmaAlHusnaModelImpl(
      code: (json['code'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? "empty status",
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => AllAsmaAlHusna.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AsmaAlHusnaModelImplToJson(
        _$AsmaAlHusnaModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_$AllAsmaAlHusnaImpl _$$AllAsmaAlHusnaImplFromJson(Map<String, dynamic> json) =>
    _$AllAsmaAlHusnaImpl(
      name: json['name'] as String? ?? "",
      transliteration: json['transliteration'] as String? ?? "",
      number: (json['number'] as num?)?.toInt() ?? 0,
      en: json['en'] == null
          ? const Meaning(meaning: "")
          : Meaning.fromJson(json['en'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AllAsmaAlHusnaImplToJson(
        _$AllAsmaAlHusnaImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'transliteration': instance.transliteration,
      'number': instance.number,
      'en': instance.en,
    };

_$MeaningImpl _$$MeaningImplFromJson(Map<String, dynamic> json) =>
    _$MeaningImpl(
      meaning: json['meaning'] as String? ?? "",
    );

Map<String, dynamic> _$$MeaningImplToJson(_$MeaningImpl instance) =>
    <String, dynamic>{
      'meaning': instance.meaning,
    };
