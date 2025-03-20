
import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:al_quran/data/models/quran_pak_model/quran_pak_model.dart';

class AyatTextWidget extends StatelessWidget {
  const AyatTextWidget({
    super.key,
    required this.darkMode,
    required this.verse,
  });

  final bool darkMode;
  final VerseModel verse;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: darkMode
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
                  .apply(
                  fontFamily: 'IBM-Bold'),
            ),
            SizedBox(
              height: DSize.spaceBtwItems,
            ),
            Divider(
              color: darkMode
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
                  fontFamily:
                  'Not-Regular'),
            )
          ],
        ),
      ),
    );
  }
}
