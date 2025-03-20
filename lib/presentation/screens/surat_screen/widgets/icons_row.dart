
import 'package:al_quran/core/resources/constants/screen_path.dart';

class IconRowWidgets extends StatelessWidget {
  const IconRowWidgets({
    super.key,
    required this.isBookmarked,
    required this.darkMode,
    required this.data,
    required this.surat,
  });

  final bool isBookmarked;
  final bool darkMode;
  final Verse data;
  final QuranSingleSurah? surat;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isBookmarked
          ? Colors.yellow.shade200
          : (darkMode ? AppColors.scafoldDark : Colors.transparent),
      shadowColor:
      darkMode ? Colors.grey.withOpacity(0.05) : AppColors.appPurpleLight1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DSize.sm),
          color: isBookmarked
              ? darkMode
              ? AppColors.primary
              : AppColors.appOrange.withOpacity(0.5)
              : (darkMode ? AppColors.scafoldDark : AppColors.appPurpleLight1),
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor:
            darkMode ? AppColors.appPurpleLight1 : Colors.transparent,
            child: Text(
              '${data.id}',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: AppColors.appWhite),
            ),
            backgroundImage: AssetImage(
              ImageString.star,
            ),
          ),
          title: isBookmarked
              ? Text("📌 Bookmarked",
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .apply(color: AppColors.appWhite))
              : null,
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Iconsax.play,
                color: darkMode ? AppColors.appPurpleLight1 : AppColors.white,
              ),
              SizedBox(
                width: DSize.spacerBtwSections / 2,
              ),
              IconButton(
                icon: Icon(
                  Iconsax.bookmark_2,
                  color: darkMode ? AppColors.appPurpleLight1 : AppColors.white,
                ),
                onPressed: () async {
                  var box = Hive.box<BookmarkModel>('bookmark_box');
                  final ayah = BookmarkModel(
                      surahId: surat!.id,
                      surahName: surat!.name,
                      ayahNumber: data.id,
                      ayahText: data.text,
                      transliteration: surat!.transliteration,
                      type: surat!.type,
                      dateTime: DateTime.now());
                  await box.add(ayah);
                  if (kDebugMode) {
                    debugPrint("Ayah Bookmarked Successfully ✅");
                  }
                  FlashBarHelper.flushBarSuccessMessage(
                      'Ayah Bookmarked Successfully ✅', context);
                },
              ),
              SizedBox(
                width: DSize.spacerBtwSections / 2,
              ),
              Icon(
                Iconsax.share,
                color: darkMode ? AppColors.appPurpleLight1 : AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
