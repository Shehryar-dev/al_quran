part of 'beads_counter_bloc.dart';


class  BeadsCounterState extends Equatable{
  final int count;
  final int overallBeadsCount;
  final DateTime? time;
  final int todayBeadsCount;
  const BeadsCounterState({this.count = 0,required this.overallBeadsCount,required this.todayBeadsCount, this.time});

  BeadsCounterState copyWith({int? count, int? overallBeadsCount, DateTime? time, int? todayBeadsCount}){
    return BeadsCounterState(count: count ?? this.count,
    overallBeadsCount: overallBeadsCount ?? this.overallBeadsCount,
      time: time ?? this.time,
      todayBeadsCount: todayBeadsCount ?? this.todayBeadsCount
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [count, overallBeadsCount,time, todayBeadsCount];
}