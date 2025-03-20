import 'package:al_quran/core/resources/loader/animation_loader.dart';
import 'package:al_quran/presentation/screens/home_screen/home_screen.dart';
import 'package:al_quran/presentation/screens/introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';

import '../../../core/resources/constants/screen_path.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 4500), ()=> Navigator.pushNamedAndRemoveUntil(context, RoutesNames.introScreen, (route)=> false));
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: HelperFunctions.isDarkMode(context) ? [AppColors.scafoldDark, AppColors.scafoldDark, AppColors.scafoldDark, ] : [ AppColors.appPurpleDark,  AppColors.appPurpleDark,  AppColors.primary, ],
      ),
    ),
      alignment: Alignment.center,
      child: Lottie.asset(ImageString.bismillahAnimation,
          width: MediaQuery.of(context).size.width *
              0.75),
    );
  }
}
