import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'app_event.dart';
part 'app_state.dart';
//
// class AppBloc extends Bloc<AppEvent, AppState> {
//   final _box = Hive.box('themeBox');
//
//   AppBloc() : super(AppState()) {
//     on<AppEvent>((event, emit) {
//       // TODO: implement event handler
//     });
//
//     on<ChangeThemeEvent>((event, emit) {
//       _box.put('isDarkMode', event.isDark);
//       emit(state.copyWith(isDark: event.isDark));
//     });
//
//     on<LoadThemeEvent>((event, emit) {
//       final isDark = _box.get('isDarkMode',defaultValue: false);
//       emit(state.copyWith(isDark: isDark));
//     });
//   }
// }
class AppBloc extends Bloc<AppEvent, AppState> {
  final Box _box;

  AppBloc(this._box) : super(AppState()) {
    on<ChangeThemeEvent>((event, emit) {
      _box.put('isDarkMode', event.isDark);
      final updatedValue = _box.get('isDarkMode', defaultValue: true);
      emit(state.copyWith(isDark: updatedValue));
    });

    on<LoadThemeEvent>((event, emit) {
      final isDark = _box.get('isDarkMode', defaultValue: true);
      emit(state.copyWith(isDark: isDark));
    });
  }
}
