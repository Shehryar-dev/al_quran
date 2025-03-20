part of 'app_bloc.dart';


class AppState extends Equatable{
  final bool isDark;

  const AppState({this.isDark = false});

  AppState copyWith({bool? isDark}){
    return AppState(
      isDark: isDark ?? this.isDark
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isDark];
}
