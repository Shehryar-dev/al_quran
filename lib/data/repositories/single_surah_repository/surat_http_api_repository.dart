
import 'package:al_quran/data/models/quran_single_surat_model/quran_single_surat_model.dart';
import 'package:al_quran/data/network/network_api_dio_services.dart';
import 'package:al_quran/data/repositories/single_surah_repository/surat_repository.dart';

class SuratHttpApiRepository implements SuratRepository{
  final _apiService = NetworkApiService();
  @override
  Future<QuranSingleSurah> fetchSingleSurat(String url) async{
     try{
       final response = await _apiService.getApi(url);;
        return QuranSingleSurah.fromJson(response);

     }catch(e){
          throw Exception('$e');
     }
  }
}