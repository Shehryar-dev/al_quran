
import 'package:al_quran/core/resources/constants/screen_path.dart';

class StartBtnWidget extends StatelessWidget {
  const StartBtnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(
            context, RoutesNames.homeScreen, (route) => false);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      ),
      child: Text(
        TextString.introductionBtn,
        style: Theme.of(context)
            .textTheme
            .labelLarge!
            .apply(fontFamily: 'Ex-Regular', color: AppColors.white),
      ),
    );
  }
}
