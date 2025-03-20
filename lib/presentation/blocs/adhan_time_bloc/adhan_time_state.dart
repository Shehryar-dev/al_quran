part of 'adhan_time_bloc.dart';


abstract class SalahState extends Equatable {
  @override
  List<Object> get props => [];
}

class SalahInitial extends SalahState {}

class SalahLoading extends SalahState {}

class SalahLoaded extends SalahState {
  final Map<String, String> prayerTimes;
  SalahLoaded(this.prayerTimes);
}

class SalahError extends SalahState {
  final String message;
  SalahError(this.message);
}
