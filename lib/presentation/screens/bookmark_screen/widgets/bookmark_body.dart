
import 'package:al_quran/core/resources/constants/screen_path.dart';

class BookMarkBody extends StatelessWidget {
  const BookMarkBody({
    super.key,
    required this.ItemCount,
    required this.bookmarkList,
  });
  final int ItemCount;
  final List<BookmarkModel> bookmarkList;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: DSize.defaultSpace / 5, vertical: DSize.defaultSpace),
        child: Column(
          children: [
            BookmarkedList(ItemCount: ItemCount, bookmarkList: bookmarkList),
            SizedBox(
              height: DSize.spacerBtwSections,
            )
          ],
        ),
      ),
    );
  }
}
