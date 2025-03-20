import 'package:al_quran/core/resources/constants/app_url.dart';
import 'package:al_quran/data/network/network_api_dio_services.dart';
import '../../models/asma_al_husna_model/asma_al_husna.dart';
import '99_names_repository.dart';

class AsmaAlHusnaHttpApiRepository implements AsmaAlHusnaRepository{
  final _apiService = NetworkApiService();

  @override
  Future<AsmaAlHusnaModel> fetchNames() async{
    try{
      final response = await _apiService.getApi(AppUrl.asmaAlHusna);
      return AsmaAlHusnaModel.fromJson(response);
    }catch(e){
      throw '$e';
    }
  }
}