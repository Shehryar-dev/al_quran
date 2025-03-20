
import 'package:al_quran/data/models/quran_pak_model/quran_pak_model.dart';

abstract class QuranPakRepository {
  Future<List<SurahModel>> fetchRecords();
}
