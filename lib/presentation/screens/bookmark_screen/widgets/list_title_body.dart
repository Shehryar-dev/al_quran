
import 'package:al_quran/core/resources/constants/screen_path.dart';

class TitleBody extends StatelessWidget {
  const TitleBody({
    super.key,
    required this.bookmark,
  });

  final BookmarkModel bookmark;

  @override
  Widget build(BuildContext context) {
    return Text(bookmark.transliteration,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .apply(
            fontFamily: 'Ex-Medium',
            color: HelperFunctions.isDarkMode(context)
                ? AppColors.white
                : AppColors.appPurpleDark));
  }
}
