import 'package:al_quran/data/models/qurat_surat_list_model/surat_list_model.dart';
import 'package:al_quran/data/repositories/all_surah_list_repository/surat_list_repository.dart';


class SurahListMockApiRepository implements SuratListRepository {
  @override
  Future<List<QuranSuratListModel>> fetchQuranSuratList() async {
    await Future.delayed(const Duration(seconds: 1));

    final mockData = [
      {
        "id": 1,
        "name": "الفاتحة",
        "transliteration": "Al-Fatihah",
        "translation": "کھولنے والی",
        "type": "meccan",
        "total_verses": 7,
        "link":
            "https://cdn.jsdelivr.net/npm/quran-json@3.1.2/dist/chapters/ur/1.json"
      },
      {
        "id": 2,
        "name": "البقرة",
        "transliteration": "Al-Baqarah",
        "translation": "گائے",
        "type": "medinan",
        "total_verses": 286,
        "link":
            "https://cdn.jsdelivr.net/npm/quran-json@3.1.2/dist/chapters/ur/2.json"
      }
    ];

    return mockData.map((e) => QuranSuratListModel.fromJson(e)).toList();
  }
}
