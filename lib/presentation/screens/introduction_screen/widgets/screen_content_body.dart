
import 'package:al_quran/core/resources/constants/screen_path.dart';

class IntroContentBody extends StatelessWidget {
  const IntroContentBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          TextString.appTitle,
          style: Theme.of(context).textTheme.headlineLarge!.apply(
              fontFamily: 'Lita-Regular',
              color: HelperFunctions.isDarkMode(context)
                  ? AppColors.appPurpleLight1
                  : AppColors.primary),
        ),
        const SizedBox(height: DSize.spaceBtwItems),
        Text(
          TextString.introductionDescription,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .labelLarge!
              .apply(fontFamily: 'Ex-Regular'),
        ),
        const SizedBox(height: DSize.spacerBtwSections),
        Lottie.asset(ImageString.appReadQuran, width: 300, height: 300),
        const SizedBox(height: DSize.spacerBtwSections),
        StartBtnWidget(),
      ],
    );
  }
}
