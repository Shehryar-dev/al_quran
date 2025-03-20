import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'app.dart';
import 'data/models/bookmark_model/bookmark_model.dart';
import 'di/service_locator.dart';

void main()  async{

  await Hive.initFlutter();
  serviceLocator();
  await Hive.openBox('tasbeehBox');
  Hive.registerAdapter(BookmarkModelAdapter());
  await Hive.openBox('themeBox');
  if (!Hive.isBoxOpen('bookmark_box')) {
    await Hive.openBox<BookmarkModel>('bookmark_box');
  }

  runApp(const MyApp());
}





// await Hive.openBox('last_read');
// void fetchData() async {
//   Uri uri = Uri.parse("https://cdn.jsdelivr.net/npm/quran-json@3.1.2/dist/chapters/ur/index.json");
//
//   final response = await http.get(uri);
//
//   if (response.statusCode == 200) {
//     print("Data fetched successfully!");
//   } else {
//     print("Error: ${response.statusCode}");
//   }
// }