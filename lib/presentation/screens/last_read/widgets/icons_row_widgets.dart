
import 'package:al_quran/core/resources/constants/screen_path.dart';

class IconBookmarkedListRow extends StatelessWidget {
  const IconBookmarkedListRow({
    super.key,
    required this.isBookmarked,
    required this.isDark,
    required this.verseKeys,
    required this.index,
    required this.verse,
    required this.surah,
    required this.i
  });
  final int i;
  final bool isBookmarked;
  final bool isDark;
  final List<List<GlobalKey<State<StatefulWidget>>>> verseKeys;
  final int index;
  final VerseModel verse;
  final SurahModel surah;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isBookmarked
          ? Colors.yellow.shade200
          : (isDark
          ? AppColors.scafoldDark
          : Colors.transparent),
      shadowColor: isDark
          ? Colors.grey.withOpacity(0.05)
          : AppColors.appPurpleLight1,
      child: Container(
        key: verseKeys[index][i],
        decoration: BoxDecoration(
          borderRadius:
          BorderRadius.circular(DSize.sm),
          color: isBookmarked
              ? isDark
              ? AppColors.primary
              : AppColors.appOrange
              .withOpacity(0.5)
              : (isDark
              ? AppColors.scafoldDark
              : AppColors.appPurpleLight1),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: isDark
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
                  color: AppColors.appWhite),
            ),
          ),
          title: isBookmarked
              ? Text("📌 Bookmarked",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .apply(
                  color:
                  AppColors.appWhite))
              : null,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Iconsax.play,
                color: isDark
                    ? AppColors.appPurpleLight1
                    : AppColors.white,
              ),
              SizedBox(
                width:
                DSize.spacerBtwSections / 2,
              ),
              IconButton(
                icon: Icon(
                  Iconsax.bookmark_2,
                  color: isDark
                      ? AppColors.appPurpleLight1
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
                      transliteration:
                      surah.transliteration,
                      type: surah.type,
                      dateTime: DateTime.now());
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
                DSize.spacerBtwSections / 2,
              ),
              Icon(
                Iconsax.share,
                color: isDark
                    ? AppColors.appPurpleLight1
                    : AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
