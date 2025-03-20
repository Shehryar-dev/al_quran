import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_single_surat_model.freezed.dart';
part 'quran_single_surat_model.g.dart';

@freezed
class QuranSingleSurah with _$QuranSingleSurah {
  const factory QuranSingleSurah({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String transliteration,
    @Default('') String translation,
    @Default('') String type,
    @Default(0) int totalVerses,
    @Default([]) List<Verse> verses,  // ✅ Ye field sahi hai
  }) = _QuranSingleSurah;

  factory QuranSingleSurah.fromJson(Map<String, dynamic> json) => _$QuranSingleSurahFromJson(json);
}

@freezed
class Verse with _$Verse {
  const factory Verse({
    @Default(0) int id,
    @Default('') String text,
    @Default('') String translation,
    @Default('') String transliteration,
  }) = _Verse;

  factory Verse.fromJson(Map<String, dynamic> json) => _$VerseFromJson(json);
}
