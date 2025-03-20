
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../core/resources/constants/screen_path.dart';

class HttpQuranPakRepository  implements QuranPakRepository{

  @override
  Future<List<SurahModel>> fetchRecords() async {
    String? localData = await QuranLocalStorage.getQuranData();

    if (localData != null) {
      List<dynamic> jsonData = jsonDecode(localData);
      return jsonData.map((e) => SurahModel.fromJson(e)).toList();
    } else {
      final response = await http.get(Uri.parse(AppUrl.quranPakApi));

      if (response.statusCode == 200) {
        await QuranLocalStorage.saveQuranData(response.body); // Save API Data Locally
        List<dynamic> jsonData = jsonDecode(response.body);
        return jsonData.map((e) => SurahModel.fromJson(e)).toList();
      } else {
        throw Exception("Failed to load Quran data");
      }
    }
  }
}
