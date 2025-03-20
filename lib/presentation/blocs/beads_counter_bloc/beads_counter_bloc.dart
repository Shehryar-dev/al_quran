import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

part 'beads_counter_event.dart';
part 'beads_counter_state.dart';
class BeadsCounterBloc extends Bloc<BeadsCounterEvent, BeadsCounterState> {
  final Box tasbeehBox = Hive.box('tasbeehBox');

  BeadsCounterBloc() : super(BeadsCounterState(
    todayBeadsCount: Hive.box('tasbeehBox').get('todayBeadsCount', defaultValue: 0),
    overallBeadsCount: Hive.box('tasbeehBox').get('overallBeadsCount', defaultValue: 0),
    time: Hive.box('tasbeehBox').get('lastTasbeehTime') != null
        ? DateTime.parse(Hive.box('tasbeehBox').get('lastTasbeehTime'))
        : null,
  )) {

    final currentDate = DateTime.now().day;
    final savedDate = tasbeehBox.get('lastTasbeehDate', defaultValue: currentDate);

    if (currentDate != savedDate) {
      tasbeehBox.put('todayBeadsCount', 0);
      tasbeehBox.put('lastTasbeehDate', currentDate);
    }

    /// ✅ Real Time Clock Update
    Timer.periodic(Duration(seconds: 1), (timer){
      add(PrayerUpdateTimeEvent());
    });

    /// Event Handlers
    on<PrayersBeadsCountEvent>(_countBeads);
    on<PrayersBeadsResetEvent>(_resetBeads);
    on<PrayerUpdateTimeEvent>((event, emit) {
      emit(state.copyWith(time: DateTime.now()));
    });
  }

  /// ✅ Beads Count Logic
  void _countBeads(PrayersBeadsCountEvent event, Emitter<BeadsCounterState> emit) {
    final newTime = DateTime.now();
    tasbeehBox.put('lastTasbeehTime', newTime.toIso8601String());

    /// ✅ Increase Beads Count Step by Step
    final newCount = state.count + 1;

    /// ✅ If 100 Beads Reached
    if (newCount >= 100) {
      final newTodayBeadsCount = state.todayBeadsCount + 1;
      final newOverallBeadsCount = state.overallBeadsCount + 1;

      /// ✅ Save New Count in Hive
      tasbeehBox.put('todayBeadsCount', newTodayBeadsCount);
      tasbeehBox.put('overallBeadsCount', newOverallBeadsCount);

      /// ✅ Emit New State
      emit(state.copyWith(
        count: 0,
        todayBeadsCount: newTodayBeadsCount,
        overallBeadsCount: newOverallBeadsCount,
        time: newTime,
      ));
    } else {
      emit(state.copyWith(count: newCount, time: newTime));
    }
  }

  /// ✅ Reset Beads Count
  void _resetBeads(PrayersBeadsResetEvent event, Emitter<BeadsCounterState> emit) {
    emit(state.copyWith(count: 0));
  }
}
