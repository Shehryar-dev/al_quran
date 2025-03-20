

import 'package:al_quran/core/resources/constants/screen_path.dart';

class AyatTextContentWidget extends StatelessWidget {
  const AyatTextContentWidget({
    super.key,
    required this.darkMode,
    required this.data,
  });

  final bool darkMode;
  final Verse data;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: darkMode
          ? AppColors.scafoldDark
          : AppColors.appWhite,
      child: Padding(
        padding: const EdgeInsets.all(
            DSize.defaultSpace / 2),
        child: Column(
          crossAxisAlignment: data.id == 1 &&
              data.text ==
                  TextString.bismillah
              ? CrossAxisAlignment.center
              : CrossAxisAlignment.end,
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor:
                Colors.transparent,
                radius: 12,
                backgroundImage: AssetImage(
                    data.id == 1 &&
                        data.text ==
                            TextString
                                .bismillah
                        ? ''
                        : ImageString.star),
                child: Text(
                  data.id == 1 &&
                      data.text ==
                          TextString
                              .bismillah
                      ? ''
                      : data.id == 1 &&
                      data.text ==
                          TextString
                              .bismillah
                      ? (data.id - 1)
                      .toString()
                      : (data.id - 0)
                      .toString(),
                  textAlign: TextAlign.right,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .apply(
                      fontFamily:
                      'Ex-Regular',
                      color: HelperFunctions
                          .isDarkMode(
                          context)
                          ? AppColors
                          .white
                          : AppColors
                          .primary),
                )),
            Row(
              mainAxisAlignment: data.id == 1
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.end,
              children: [
                data.id == 1 &&
                    data.text ==
                        TextString
                            .bismillah
                    ? GradientText(
                  data.text,
                  style: Theme.of(
                      context)
                      .textTheme
                      .headlineMedium!
                      .apply(
                      fontFamily:
                      'IBM-Bold'),
                  textAlign:
                  TextAlign.right,
                  colors: darkMode
                      ? [
                    AppColors
                        .appPurpleLight1,
                    AppColors
                        .appWhite
                  ]
                      : [
                    AppColors
                        .appPurpleDark,
                    AppColors
                        .appPurple,
                    AppColors
                        .appPurpleLight1
                  ],
                )
                    : Expanded(
                    child: Text(
                      data.text,
                      style: Theme.of(
                          context)
                          .textTheme
                          .headlineMedium!
                          .apply(
                        fontFamily:
                        'IBM-Medium',
                      ),
                      textAlign:
                      TextAlign.right,
                      softWrap: true,
                    )),
                SizedBox(
                  width:
                  DSize.spaceBtwItems * 2,
                ),
              ],
            ),
            SizedBox(
              height: DSize.spaceBtwItems,
            ),
            Divider(
              color: darkMode
                  ? AppColors.scafoldDark
                  : AppColors.appWhite,
            ),
            SizedBox(
              height: DSize.spaceBtwItems,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: DSize.lg),
              child: Text(
                data.translation,
                textAlign: TextAlign.end,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .apply(
                    fontFamily:
                    'Not-Medium'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
