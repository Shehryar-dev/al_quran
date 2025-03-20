import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:al_quran/data/models/quran_pak_model/quran_pak_model.dart';
import 'package:al_quran/data/repositories/quran_pak_repository/quran_pak_repository.dart';
import 'package:al_quran/data/response/api_response.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'allsurah_event.dart';
part 'allsurah_state.dart';

class AllSurahBloc extends Bloc<AllSurahEvent, AllSurahState> {
  QuranPakRepository repository;

  AllSurahBloc({required this.repository}) : super(AllSurahState(response: ApiResponse.loading())) {
    on<FetchAllSurahRecord>(_fetchRecords);
  }

  void _fetchRecords(FetchAllSurahRecord event, Emitter<AllSurahState> emit) async{
     emit(state.copyWith(response: ApiResponse.loading()));
     await repository.fetchRecords().then((value){
       emit( state.copyWith(response: ApiResponse.completed(value)));
     }).onError((error, stackTrace){
       if(kDebugMode){
         debugPrint('error: ${error.toString()}');
         debugPrint('stacktrace: $stackTrace');
       }
       emit( state.copyWith(response: ApiResponse.error(error.toString())));
     });
  }
}
