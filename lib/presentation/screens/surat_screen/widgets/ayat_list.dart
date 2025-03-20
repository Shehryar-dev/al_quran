
import 'package:al_quran/core/resources/constants/screen_path.dart';

class VerseList extends StatelessWidget {
  const VerseList({
    super.key,
    required this.surat,
    required this.darkMode,
  });

  final QuranSingleSurah? surat;
  final bool darkMode;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          var data = surat!.verses[index];
          var box =
          Hive.box<BookmarkModel>('bookmark_box');
          bool isBookmarked = box.values.any((b) =>
          b.surahId == surat!.id &&
              b.ayahNumber == data.id);

          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: DSize.defaultSpace / 2),
            child: Column(
              children: [
                data.id == 1 &&
                    data.text == TextString.bismillah
                    ? SizedBox()
                    : IconRowWidgets(
                    isBookmarked: isBookmarked,
                    darkMode: darkMode,
                    data: data,
                    surat: surat),
                SizedBox(
                  height: DSize.spaceBtwItems,
                ),
                AyatTextContentWidget(darkMode: darkMode, data: data)
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            height: DSize.spaceBtwItems,
          );
        },
        itemCount: surat!.verses.length);
  }
}
