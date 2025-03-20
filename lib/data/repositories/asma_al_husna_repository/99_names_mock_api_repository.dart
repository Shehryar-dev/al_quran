
import 'package:al_quran/data/models/asma_al_husna_model/asma_al_husna.dart';
import 'package:al_quran/data/repositories/asma_al_husna_repository/99_names_repository.dart';
class AsmaAlHusnaMockRepository implements AsmaAlHusnaRepository {
  @override
  Future<AsmaAlHusnaModel> fetchNames() async {
    await Future.delayed(const Duration(seconds: 1)); // Simulated delay

    const jsonResponse = {
      "code": 200,
      "status": "OK",
      "data": [
        {
          "name": "الرَّحْمَنُ",
          "transliteration": "Ar Rahmaan",
          "number": 1,
          "en": {"meaning": "The Beneficent"}
        },
        {
          "name": "الرَّحِيمُ",
          "transliteration": "Ar Raheem",
          "number": 2,
          "en": {"meaning": "The Merciful"}
        },
        {
          "name": "الْمَلِكُ",
          "transliteration": "Al Malik",
          "number": 3,
          "en": {"meaning": "The King / Eternal Lord"}
        },
        {
          "name": "الْقُدُّوسُ",
          "transliteration": "Al Quddus",
          "number": 4,
          "en": {"meaning": "The Purest"}
        }
      ]
    };

    return AsmaAlHusnaModel.fromJson(jsonResponse);
  }
}
