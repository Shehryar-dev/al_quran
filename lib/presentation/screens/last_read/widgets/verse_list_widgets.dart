
import 'package:al_quran/core/resources/constants/screen_path.dart';

class VerseListWidgets extends StatelessWidget {
  const VerseListWidgets({
    super.key,
    required this.surah,
    required this.isDark,
    required this.verseKeys,
    required this.index
  });
  final int index;
  final SurahModel surah;
  final bool isDark;
  final List<List<GlobalKey<State<StatefulWidget>>>> verseKeys;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics:
      NeverScrollableScrollPhysics(), // Disable inner scrolling
      itemCount: surah.verses.length,
      itemBuilder: (context, i) {
        var verse = surah.verses[i];
        var box = Hive.box<BookmarkModel>('bookmark_box');
        bool isBookmarked = box.values.any((b) =>
        b.surahId == surah.id &&
            b.ayahNumber == verse.id);

        return Column(
          children: [
            IconBookmarkedListRow(isBookmarked: isBookmarked, isDark: isDark, verseKeys: verseKeys, index: index, verse: verse, surah: surah, i: i,),
            SizedBox(
              height: DSize.spaceBtwItems,
            ),
            AyatTextCardWidget(isDark: isDark, verse: verse),
          ],
        );
      },
      separatorBuilder: (__, indexes) {
        return SizedBox(
          height: DSize.spaceBtwItems,
        );
      },
    );
  }
}
