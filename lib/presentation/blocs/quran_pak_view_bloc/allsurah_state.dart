part of 'allsurah_bloc.dart';


class AllSurahState extends Equatable {
  ApiResponse<List<SurahModel>> response;

  AllSurahState({required this.response});

  AllSurahState copyWith({ApiResponse<List<SurahModel>>? response}) {
    return AllSurahState(response: response ?? this.response);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [response];
}
