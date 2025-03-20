import 'package:al_quran/core/resources/constants/screen_path.dart';

class TrailingBody extends StatelessWidget {
  const TrailingBody({
    super.key,
    required this.bookmark,
  });

  final BookmarkModel bookmark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(
          image: AssetImage(ImageString.bookmark),
          width: 34,
          height: 34,
          fit: BoxFit.cover,
        ),
        SizedBox(
          width: DSize.spaceBtwItems / 2,
        ),
        Text(
          bookmark.surahName,
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(
              fontFamily: 'Special-F',
              color: AppColors.appPurpleLight1),
        ),
      ],
    );
  }
}
