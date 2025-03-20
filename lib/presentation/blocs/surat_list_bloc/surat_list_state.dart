part of 'surat_list_bloc.dart';


class SuratListState extends Equatable{
  ApiResponse<List<QuranSuratListModel>> response;

   SuratListState({required this.response});

   SuratListState copyWith({ApiResponse<List<QuranSuratListModel>>? response}){
     return SuratListState(response: response ?? this.response);
   }

  @override
  // TODO: implement props
  List<Object?> get props => [response];
}