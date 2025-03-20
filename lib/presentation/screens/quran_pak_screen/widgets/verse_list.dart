
import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:al_quran/data/models/bookmark_model/bookmark_model.dart';
import 'package:al_quran/data/models/quran_pak_model/quran_pak_model.dart';
import 'package:al_quran/presentation/screens/quran_pak_screen/widgets/ayat_text.dart';
import 'package:al_quran/presentation/screens/quran_pak_screen/widgets/icon_row_widget.dart';

class SurahVerseList extends StatelessWidget {
  const SurahVerseList({
    super.key,
    required this.surah,
    required this.darkMode,
  });

  final SurahModel surah;
  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics:
      NeverScrollableScrollPhysics(), // Disable inner scrolling
      itemCount: surah.verses.length,
      itemBuilder: (context, i) {
        var verse = surah.verses[i];
        var box =
        Hive.box<BookmarkModel>('bookmark_box');
        bool isBookmarked = box.values.any((b) =>
        b.surahId == surah.id &&
            b.ayahNumber == verse.id);
        return Column(
          children: [
            IconBookRowWidget(isBookmarked: isBookmarked, darkMode: darkMode, verse: verse, surah: surah),
            SizedBox(
              height: DSize.spaceBtwItems,
            ),
            AyatTextWidget(darkMode: darkMode, verse: verse),
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
