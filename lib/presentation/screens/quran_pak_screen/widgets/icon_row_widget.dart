
import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:al_quran/data/models/bookmark_model/bookmark_model.dart';
import 'package:al_quran/data/models/quran_pak_model/quran_pak_model.dart';

class IconBookRowWidget extends StatelessWidget {
  const IconBookRowWidget({
    super.key,
    required this.isBookmarked,
    required this.darkMode,
    required this.verse,
    required this.surah,
  });

  final bool isBookmarked;
  final bool darkMode;
  final VerseModel verse;
  final SurahModel surah;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isBookmarked
          ? Colors.yellow.shade200
          : (darkMode
          ? AppColors.scafoldDark
          : Colors.transparent),
      shadowColor: darkMode
          ? Colors.grey.withOpacity(0.05)
          : AppColors.appPurpleLight1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius:
          BorderRadius.circular(DSize.sm),
          color: isBookmarked
              ? darkMode
              ? AppColors.primary
              : AppColors.appOrange
              .withOpacity(0.5)
              : (darkMode
              ? AppColors.scafoldDark
              : AppColors
              .appPurpleLight1),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: darkMode
                ? AppColors.appPurpleLight1
                : Colors.transparent,
            backgroundImage: AssetImage(
              ImageString.star,
            ),
            child: Text(
              '${verse.id}',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(
                  color:
                  AppColors.appWhite),
            ),
          ),
          title: isBookmarked
              ? Text("📌 Bookmarked",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .apply(
                  color: AppColors
                      .appWhite))
              : null,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Iconsax.play,
                color: darkMode
                    ? AppColors
                    .appPurpleLight1
                    : AppColors.white,
              ),
              SizedBox(
                width:
                DSize.spacerBtwSections /
                    2,
              ),
              IconButton(
                icon: Icon(
                  Iconsax.bookmark_2,
                  color: darkMode
                      ? AppColors
                      .appPurpleLight1
                      : AppColors.white,
                ),
                onPressed: () async {
                  var box =
                  Hive.box<BookmarkModel>(
                      'bookmark_box');
                  final ayah = BookmarkModel(
                      surahId: surah.id,
                      surahName: surah.name,
                      ayahNumber: verse.id,
                      ayahText: verse.text,
                      transliteration: surah
                          .transliteration,
                      type: surah.type,
                      dateTime:
                      DateTime.now());
                  await box.add(ayah);
                  if (kDebugMode) {
                    debugPrint(
                        "Ayah Bookmarked Successfully ✅");
                  }
                  FlashBarHelper
                      .flushBarSuccessMessage(
                      'Ayah Bookmarked Successfully ✅',
                      context);
                },
              ),
              SizedBox(
                width:
                DSize.spacerBtwSections /
                    2,
              ),
              Icon(
                Iconsax.share,
                color: darkMode
                    ? AppColors
                    .appPurpleLight1
                    : AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
