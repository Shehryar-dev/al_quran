
import 'package:al_quran/core/resources/constants/screen_path.dart';

class BookmarkedList extends StatelessWidget {
  const BookmarkedList({
    super.key,
    required this.ItemCount,
    required this.bookmarkList,
  });

  final int ItemCount;
  final List<BookmarkModel> bookmarkList;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: ItemCount,
      itemBuilder: (context, index) {
        final bookmark = bookmarkList[index];
        return Card(
          shadowColor: Colors.grey,
          elevation: 0.1,
          color: HelperFunctions.isDarkMode(context)
              ? AppColors.scafoldDark
              : Colors.white,
          child: BlocBuilder<BookmarkBloc, BookmarkState>(
            builder: (context, state) {
              return SwipeActionCell(
                key: ValueKey(bookmark.surahId),
                trailingActions: [
                  SwipeAction(
                    icon: Icon(Iconsax.bookmark),
                    title: 'Delete',
                    color: AppColors.error,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .apply(
                        color: AppColors.appWhite,
                        fontFamily: 'Ex-Bold'),
                    onTap: (handler) {
                      // Direct surahId pass karna hai
                      context
                          .read<BookmarkBloc>()
                          .add(DeleteBookmark(index));
                    },
                  ),
                ],
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LastRead(
                          surahId: bookmark.surahId,
                          ayahId: bookmark.ayahNumber,
                        ),
                      ),
                    );
                  },
                  dense: true,
                  style: ListTileStyle.list,
                  contentPadding:
                  EdgeInsets.all(DSize.defaultSpace / 3),
                  leading: LeadingBody(index: index,),
                  title: TitleBody(bookmark: bookmark),
                  subtitle: SubTitleBody(bookmark: bookmark),
                  trailing: TrailingBody(bookmark: bookmark),
                ),
              );
            },
          ),
        );
      },
      separatorBuilder: (context, ind) {
        return SizedBox(
          height: DSize.spaceBtwItems,
        );
      },
    );
  }
}
