import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:intl/intl.dart';

class SubTitleBody extends StatelessWidget {
  const SubTitleBody({
    super.key,
    required this.bookmark,
  });

  final BookmarkModel bookmark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              bookmark.type,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(
                  fontFamily: 'Ex-Medium',
                  color: Colors.grey),
            ),
            SizedBox(
              width: DSize.spaceBtwItems / 2,
            ),
            Text('${bookmark.ayahNumber} verse',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(
                    fontFamily: 'Ex-Medium',
                    color: Colors.grey))
          ],
        ),
        SizedBox(
          height: DSize.sm / 3,
        ),
        Text(
          bookmark.ayahText,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .apply(
              fontFamily: 'IBM-Bold',
              color: Colors.grey),
        ),
        SizedBox(
          height: DSize.sm / 3,
        ),
        Text(
          '${DateFormat('EEE, d MMM y').format(bookmark.dateTime)} ${DateFormat('h:mm a').format(bookmark.dateTime)}',
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .apply(
              fontFamily: 'Ex-Medium',
              color: Colors.grey),
        )
      ],
    );
  }
}
