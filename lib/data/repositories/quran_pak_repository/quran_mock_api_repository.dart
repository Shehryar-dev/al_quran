import 'package:al_quran/data/models/quran_pak_model/quran_pak_model.dart';
import 'package:al_quran/data/repositories/quran_pak_repository/quran_pak_repository.dart';

class MockQuranPakRepository implements QuranPakRepository {
  @override
  Future<List<SurahModel>> fetchRecords() async {
    await Future.delayed(const Duration(seconds: 1));

    final mockData = [
      {
        "id": 1,
        "name": "الفاتحة",
        "transliteration": "Al-Fatihah",
        "translation": "کھولنے والی",
        "type": "meccan",
        "total_verses": 7,
        "verses": [
          {
            "id": 1,
            "text": "بِسۡمِ ٱللَّهِ ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ",
            "translation": "اللہ کے نام سے جو رحمان و رحیم ہے"
          },
          {
            "id": 2,
            "text": "ٱلۡحَمۡدُ لِلَّهِ رَبِّ ٱلۡعَٰلَمِينَ",
            "translation": "تعریف اللہ ہی کے لیے ہے جو تمام کائنات کا رب ہے"
          },
          {
            "id": 3,
            "text": "ٱلرَّحۡمَٰنِ ٱلرَّحِيمِ",
            "translation": "رحمان اور رحیم ہے"
          },
          {
            "id": 4,
            "text": "مَٰلِكِ يَوۡمِ ٱلدِّينِ",
            "translation": "روز جزا کا مالک ہے"
          },
          {
            "id": 5,
            "text": "إِيَّاكَ نَعۡبُدُ وَإِيَّاكَ نَسۡتَعِينُ",
            "translation":
                "ہم تیری ہی عبادت کرتے ہیں اور تجھی سے مدد مانگتے ہیں"
          },
          {
            "id": 6,
            "text": "ٱهۡدِنَا ٱلصِّرَٰطَ ٱلۡمُسۡتَقِيمَ",
            "translation": "ہمیں سیدھا راستہ دکھا"
          },
          {
            "id": 7,
            "text":
                "صِرَٰطَ ٱلَّذِينَ أَنۡعَمۡتَ عَلَيۡهِمۡ غَيۡرِ ٱلۡمَغۡضُوبِ عَلَيۡهِمۡ وَلَا ٱلضَّآلِّينَ",
            "translation":
                "اُن لوگوں کا راستہ جن پر تو نے انعام فرمایا، جو معتوب نہیں ہوئے، جو بھٹکے ہوئے نہیں ہیں"
          }
        ]
      },
    ];

    return mockData.map((e) => SurahModel.fromJson(e)).toList();
  }
}
