import 'package:al_quran/data/models/qurat_surat_list_model/surat_list_model.dart';
import 'package:al_quran/data/repositories/all_surah_list_repository/surat_list_repository.dart';
import 'package:al_quran/data/response/api_response.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'surat_list_event.dart';
part 'surat_list_state.dart';

class SuratListBloc extends Bloc<SuratListEvent, SuratListState>{
  SuratListRepository repository;
  SuratListBloc({required this.repository}) : super(SuratListState(response: ApiResponse.loading())){
    on<FetchSuratList>(_fetchSuratList);
  }

  void _fetchSuratList(FetchSuratList event, Emitter<SuratListState> emit) async{
    emit(state.copyWith(response: ApiResponse.loading() ));
     await repository.fetchQuranSuratList().then((value){
      emit(state.copyWith(response: ApiResponse.completed(value)));
    }).onError((error, stackTrace){
      print('StackTrace: ${stackTrace}');
      print('Error: ${error}');
      emit(state.copyWith(response: ApiResponse.error(error.toString())));
    });
  }

}
