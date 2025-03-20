
import 'package:al_quran/core/resources/constants/screen_path.dart';

class GradientTextWidget extends StatelessWidget {
  const GradientTextWidget({
    super.key,
    required this.surat,
    required this.darkMode,
  });

  final QuranSingleSurah? surat;
  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return GradientText(
      '${surat!.name} \n ${surat!.transliteration}',
      style: Theme.of(context)
          .textTheme
          .headlineMedium!
          .apply(fontFamily: 'IBM-Bold'),
      textAlign: TextAlign.center,
      colors: darkMode
          ? [
        AppColors.appPurpleLight1,
        AppColors.appWhite
      ]
          : [AppColors.white, AppColors.white],
    );
  }
}
