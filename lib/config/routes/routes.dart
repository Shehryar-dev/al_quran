
import 'package:al_quran/config/routes/routes_name.dart';
import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:al_quran/presentation/screens/home_screen/home_screen.dart';
import 'package:al_quran/presentation/screens/introduction_screen/introduction_screen.dart';
import 'package:al_quran/presentation/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes{
  static Route<dynamic> generateRoutes(RouteSettings settings){
    switch(settings.name){
      case RoutesNames.splashScreen:
        return MaterialPageRoute(builder: (_)=> SplashScreen());

      case RoutesNames.introScreen:
        return MaterialPageRoute(builder: (_)=> OnboardingScreen());

      case RoutesNames.homeScreen:
        return MaterialPageRoute(builder: (_)=> HomeScreen());


      case RoutesNames.quranPakScreen:
        return MaterialPageRoute(builder: (_)=> QuranPakScreen());


      case RoutesNames.asmaAlHusnaScreen:
        return MaterialPageRoute(builder: (_)=> AsmaAlHusnaView());

      case RoutesNames.beadsScreen:
        return MaterialPageRoute(builder: (_)=> PrayerCounter());


      case RoutesNames.salahTime:
        return MaterialPageRoute(builder: (_)=> SalahTimeScreen());


      case RoutesNames.qiblaFinderScreen:
        return MaterialPageRoute(builder: (_)=> QiblaDirectionView());



        default:
        return MaterialPageRoute(builder: (_)=> const Scaffold(
          body: Center(
            child: Text('404\nPage Not Fount'),
          ),
        ));
    }
  }
}
