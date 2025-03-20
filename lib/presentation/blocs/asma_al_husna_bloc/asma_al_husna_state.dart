part of 'asma_al_husna_bloc.dart';


class AsmaAlHusnaState extends Equatable{
  ApiResponse<AsmaAlHusnaModel> response;

  AsmaAlHusnaState({required this.response});

  AsmaAlHusnaState copyWith({ApiResponse<AsmaAlHusnaModel>? response}){
    return AsmaAlHusnaState(response: response ?? this.response);
  }


  @override
  // TODO: implement props
  List<Object?> get props => [response];
}