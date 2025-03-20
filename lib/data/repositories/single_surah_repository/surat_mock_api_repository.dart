import 'package:al_quran/data/models/quran_single_surat_model/quran_single_surat_model.dart';
import 'package:al_quran/data/repositories/single_surah_repository/surat_repository.dart';

class SuratMockRepository implements SuratRepository {
  @override
  Future<QuranSingleSurah> fetchSingleSurat(String url) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulated API delay

    const jsonResponse = {
      "id": 108,
      "name": "الكوثر",
      "transliteration": "Al-Kawthar",
      "translation": "جنت کی نہر",
      "type": "meccan",
      "totalVerses": 3,
      "verses": [
        {
          "id": 1,
          "text": "إِنَّآ أَعۡطَيۡنَٰكَ ٱلۡكَوۡثَرَ",
          "translation": "(اے نبیؐ) ہم نے تمہیں کوثر عطا کر دیا",
          "transliteration": "Inna aAAtaynaka alkawthara"
        },
        {
          "id": 2,
          "text": "فَصَلِّ لِرَبِّكَ وَٱنۡحَرۡ",
          "translation": "پس تم اپنے رب ہی کے لیے نماز پڑھو اور قربانی کرو",
          "transliteration": "Fasalli lirabbika wainhar"
        },
        {
          "id": 3,
          "text": "إِنَّ شَانِئَكَ هُوَ ٱلۡأَبۡتَرُ",
          "translation": "تمہارا دشمن ہی جڑ کٹا ہے",
          "transliteration": "Inna shaniaka huwa alabtaru"
        }
      ]
    };

    return QuranSingleSurah.fromJson(jsonResponse);
  }
}
