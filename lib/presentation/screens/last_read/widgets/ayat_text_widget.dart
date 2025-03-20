
import 'package:al_quran/core/resources/constants/screen_path.dart';

class AyatTextCardWidget extends StatelessWidget {
  const AyatTextCardWidget({
    super.key,
    required this.isDark,
    required this.verse,
  });

  final bool isDark;
  final VerseModel verse;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDark
          ? AppColors.scafoldDark
          : AppColors.white,
      child: Padding(
        padding: const EdgeInsets.all(
            DSize.defaultSpace),
        child: Column(
          crossAxisAlignment:
          CrossAxisAlignment.end,
          children: [
            Text(
              verse.text,
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(fontFamily: 'IBM-Bold'),
            ),
            SizedBox(
              height: DSize.spaceBtwItems,
            ),
            Divider(
              color: isDark
                  ? AppColors.appPurpleDark
                  : AppColors.appWhite,
            ),
            SizedBox(
              height: DSize.spaceBtwItems,
            ),
            Text(
              verse.translation,
              textAlign: TextAlign.end,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(
                  fontFamily: 'Not-Regular'),
            )
          ],
        ),
      ),
    );
  }
}
