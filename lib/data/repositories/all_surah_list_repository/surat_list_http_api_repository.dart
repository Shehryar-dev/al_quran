
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../../core/resources/constants/screen_path.dart';

class SuratListHttpApiRepository implements SuratListRepository {
  @override
  Future<List<QuranSuratListModel>> fetchQuranSuratList() async {
     try{
       final response = await http.get(Uri.parse(AppUrl.quranSurahListApi));

       if (response.statusCode == 200) {
         await SurahStorage.saveSurahs(response.body); // Save API Data Locally
         List<dynamic> jsonData = jsonDecode(response.body);
         return jsonData.map((e) => QuranSuratListModel.fromJson(e)).toList();
       } else {
         throw Exception("Failed to load Quran data");
       }

     }catch(e){
       throw Exception('$e');
     }
  }


}
