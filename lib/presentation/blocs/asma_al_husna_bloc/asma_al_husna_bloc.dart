import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:al_quran/data/models/asma_al_husna_model/asma_al_husna.dart';
import 'package:al_quran/data/repositories/asma_al_husna_repository/99_names_repository.dart';
import 'package:al_quran/data/response/api_response.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'asma_al_husna_event.dart';
part 'asma_al_husna_state.dart';

class AsmaAlHusnaBloc extends Bloc<AsmaAlHusnaEvent, AsmaAlHusnaState> {
  AsmaAlHusnaRepository repository;
  AsmaAlHusnaBloc({required this.repository}) : super(AsmaAlHusnaState(response: ApiResponse.loading())) {
    on<FetchAllNames>((event, emit) async{
      emit(state.copyWith(response: ApiResponse.loading()));
      await repository.fetchNames().then((value){
         if(kDebugMode){
           debugPrint('Successfully Fetch');
         }
         emit(state.copyWith(response: ApiResponse.completed(value)));
       }).onError((error, stackTrace){
         if(kDebugMode){
           debugPrint('error: ${error}');
           debugPrint('stackTrace: ${stackTrace}');
         }
         emit(state.copyWith(response: ApiResponse.error(error.toString())));
       });
    });
  }
}
