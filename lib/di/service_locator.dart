import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:get_it/get_it.dart';

GetIt getIT = GetIt.instance;

void serviceLocator(){
  getIT.registerLazySingleton<QuranPakRepository>(()=> HttpQuranPakRepository());
  getIT.registerLazySingleton<SuratListRepository>(()=> SuratListHttpApiRepository());
  getIT.registerLazySingleton<SuratRepository>(()=> SuratHttpApiRepository());
  getIT.registerLazySingleton<AsmaAlHusnaRepository>(()=> AsmaAlHusnaHttpApiRepository());
  getIT.registerLazySingleton<AdhanRepository>(()=> AdhanRepository());
}