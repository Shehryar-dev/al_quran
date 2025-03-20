part of 'quran_pak_surat_bloc.dart';


class QuranPakSuratState extends Equatable{
  ApiResponse<QuranSingleSurah> response;

  QuranPakSuratState({required this.response});

  QuranPakSuratState copyWith({ApiResponse<QuranSingleSurah>? response}){
    return QuranPakSuratState(response: response ?? this.response);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [response];

}