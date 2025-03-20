import 'package:freezed_annotation/freezed_annotation.dart';

part 'surat_list_model.freezed.dart';
part 'surat_list_model.g.dart';

@freezed
class QuranSuratListModel with _$QuranSuratListModel {
  const factory QuranSuratListModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String transliteration,
    @Default('') String translation,
    @Default('') String type,
    @Default(1) int totalVerses,
    @Default('') String link,
  }) = _QuranSuratListModel;

  factory QuranSuratListModel.fromJson(Map<String, dynamic> json) => _$QuranSuratListModelFromJson(json);
}
