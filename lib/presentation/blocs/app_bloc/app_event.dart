part of 'app_bloc.dart';


abstract  class AppEvent extends Equatable{
  const AppEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class ChangeThemeEvent extends AppEvent{
  final bool isDark;
  const ChangeThemeEvent(this.isDark);
  @override
  // TODO: implement props
  List<Object?> get props => [isDark];
}

class LoadThemeEvent extends AppEvent {}

