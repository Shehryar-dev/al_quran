import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_pak_model.freezed.dart';
part 'quran_pak_model.g.dart';

@freezed
class SurahModel with _$SurahModel {
  const factory SurahModel({
    required int id,
    required String name,
    required String transliteration,
    required String translation,
    required String type,
    required int total_verses,
    required List<VerseModel> verses,
  }) = _SurahModel;

  factory SurahModel.fromJson(Map<String, dynamic> json) => _$SurahModelFromJson(json);
}

@freezed
class VerseModel with _$VerseModel {
  const factory VerseModel({
    required int id,
    required String text,
    required String translation,
  }) = _VerseModel;

  factory VerseModel.fromJson(Map<String, dynamic> json) => _$VerseModelFromJson(json);
}
