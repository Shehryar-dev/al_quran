import 'package:al_quran/data/repositories/adhan_time_repository/adhan_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'adhan_time_event.dart';
part 'adhan_time_state.dart';

class SalahTimeBloc extends Bloc<SalahTimeEvent, SalahState> {
  final AdhanRepository salahRepository;

  SalahTimeBloc({required this.salahRepository}) : super(SalahInitial()) {
    on<FetchSalahTimes>(_onFetchSalahTimes);
  }

  Future<void> _onFetchSalahTimes(
      FetchSalahTimes event, Emitter<SalahState> emit) async {
    emit(SalahLoading());
    try {
      final prayerTimes = await salahRepository.getPrayerTimes();
      emit(SalahLoaded(prayerTimes));
    } catch (e) {
      emit(SalahError("Failed to fetch Salah times."));
    }
  }
}
