import 'package:hive/hive.dart';

class SurahStorage {
  static Future<void> saveSurahs(String jsonData) async {
    var box = await Hive.openBox('surahListBox');
    await box.put('surahListData', jsonData);
  }

  static Future<String> getSurahs() async {
    var box = await Hive.openBox('surahListBox');
    return box.get('surahListData');
  }
}

