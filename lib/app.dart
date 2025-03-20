import 'package:al_quran/core/resources/constants/screen_path.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(Hive.box('themeBox'))..add(LoadThemeEvent()),
      child: BlocBuilder<AppBloc, AppState>(
        buildWhen: (c, p) => c.isDark != p.isDark,
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Al-Quran',
            theme: MyAppTheme.lightTheme,
            darkTheme: MyAppTheme.darkTheme,
            themeMode: state.isDark ? ThemeMode.dark : ThemeMode.light,
            initialRoute: RoutesNames.splashScreen,
            onGenerateRoute: Routes.generateRoutes,
          );
        },
      ),
    );
  }
}
