import 'package:al_quran/core/resources/constants/screen_path.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(DSize.defaultSpace),
            child: IntroContentBody(),
          ),
        ),
      ),
    );
  }
}
