part of 'beads_counter_bloc.dart';


class BeadsCounterEvent extends Equatable{
  const BeadsCounterEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}


class PrayersBeadsCountEvent extends BeadsCounterEvent{}

class PrayersBeadsResetEvent extends BeadsCounterEvent{}

class PrayerUpdateTimeEvent extends BeadsCounterEvent{}