import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:al_quran/data/models/quran_single_surat_model/quran_single_surat_model.dart';
import 'package:al_quran/data/repositories/single_surah_repository/surat_repository.dart';
import 'package:al_quran/data/response/api_response.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'quran_pak_surat_event.dart';
part 'quran_pak_surat_state.dart';

class QuranPakSuratBloc extends Bloc<QuranPakSuratEvent, QuranPakSuratState> {
  SuratRepository repository;
  String url;

  QuranPakSuratBloc({required this.repository, required this.url}) : super(QuranPakSuratState(response: ApiResponse.loading())) {
    on<FetchSuratEvent>(_fetchSurat);
  }
  void _fetchSurat(FetchSuratEvent event, Emitter<QuranPakSuratState> emit) async{
    emit(state.copyWith(response: ApiResponse.loading()));
    await repository.fetchSingleSurat(url).then((value){
      emit(state.copyWith(response: ApiResponse.completed(value)));
      if(kDebugMode){
        debugPrint('successfully fetch');
      }
    }).onError((error, stackTrace){
      if(kDebugMode){
        debugPrint('error: $error');
        debugPrint('stacktrace: $stackTrace');
      }

      emit(state.copyWith(response: ApiResponse.error(error.toString())));

    });
  }
}
