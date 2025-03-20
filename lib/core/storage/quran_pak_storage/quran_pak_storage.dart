import 'package:hive/hive.dart';

class QuranLocalStorage {
  static Future<void> saveQuranData(String jsonData) async {
    var box = await Hive.openBox('quranBox');
    await box.put('quranData', jsonData);
  }

  static Future<String?> getQuranData() async {
    var box = await Hive.openBox('quranBox');
    return box.get('quranData');
  }
}
