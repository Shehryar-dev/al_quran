import 'package:hive/hive.dart';

class HiveStorageHelper {
  static late Box _box;

  /// Box initialize (Call this in main() before using any function)
  static Future<void> init() async {
    _box = await Hive.openBox('appStorage');
  }

  /// **Data Save  function**
  static Future<void> saveData(String key, dynamic value) async {
    await _box.put(key, value);
  }

  /// **Data Get function**
  static dynamic getData(String key, {dynamic defaultValue}) {
    return _box.get(key, defaultValue: defaultValue);
  }

  /// **Data Update function** (Hive put)
  static Future<void> updateData(String key, dynamic value) async {
    await _box.put(key, value);
  }

  /// **Data Delete function**
  static Future<void> deleteData(String key) async {
    await _box.delete(key);
  }

  /// **Key Existence Check
  static bool containsKey(String key) {
    return _box.containsKey(key);
  }
}
