import 'package:al_quran/data/models/quran_single_surat_model/quran_single_surat_model.dart';

abstract class SuratRepository {
  Future<QuranSingleSurah> fetchSingleSurat(String url);
}