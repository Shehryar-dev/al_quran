import 'package:freezed_annotation/freezed_annotation.dart';

part 'asma_al_husna.freezed.dart';
part 'asma_al_husna.g.dart';

@freezed
class AsmaAlHusnaModel with _$AsmaAlHusnaModel {
  const factory AsmaAlHusnaModel({
    @Default(0) int code,
    @Default("empty status") String status,
    @Default([]) List<AllAsmaAlHusna> data,
  }) = _AsmaAlHusnaModel;

  factory AsmaAlHusnaModel.fromJson(Map<String, dynamic> json) =>
      _$AsmaAlHusnaModelFromJson(json);
}

@freezed
class AllAsmaAlHusna with _$AllAsmaAlHusna {
  const factory AllAsmaAlHusna({
    @Default("") String name,
    @Default("") String transliteration,
    @Default(0) int number,
    @Default(Meaning(meaning: "")) Meaning en,
  }) = _AllAsmaAlHusna;

  factory AllAsmaAlHusna.fromJson(Map<String, dynamic> json) =>
      _$AllAsmaAlHusnaFromJson(json);
}

@freezed
class Meaning with _$Meaning {
  const factory Meaning({
    @Default("") String meaning,
  }) = _Meaning;

  factory Meaning.fromJson(Map<String, dynamic> json) =>
      _$MeaningFromJson(json);
}
