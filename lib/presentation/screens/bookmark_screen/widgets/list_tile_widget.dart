
import 'package:al_quran/core/resources/constants/screen_path.dart';

class LeadingBody extends StatelessWidget {
  const LeadingBody({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 20,
        backgroundColor: Colors.transparent,
        backgroundImage: AssetImage(
          HelperFunctions.isDarkMode(context)
              ? ImageString.star
              : ImageString.verseBorder,
        ),
        child: Text((index + 1).toString(),
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(
                fontFamily: 'Ex-Bold',
                color: HelperFunctions.isDarkMode(
                    context)
                    ? AppColors.white
                    : AppColors.appPurpleDark)));
  }
}
