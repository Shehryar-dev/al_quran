import 'package:al_quran/core/resources/constants/screen_path.dart';


class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  late BookmarkBloc _bloc;

  @override
  void initState() {
    _bloc = BookmarkBloc();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (context) => _bloc,
          child: BlocListener<BookmarkBloc, BookmarkState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            child: BlocBuilder<BookmarkBloc, BookmarkState>(
                builder: (context, state) {
              return ValueListenableBuilder(
                valueListenable:
                    Hive.box<BookmarkModel>('bookmark_box').listenable(),
                builder: (context, Box<BookmarkModel> box, _) {
                  if (box.isEmpty) {
                    return Center(
                      child: Image.asset(
                        ImageString.bookmarkEmpty,
                        width: 300,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    );
                  } else {
                    return BookMarkBody(
                      ItemCount: box.length,
                      bookmarkList: box.values.toList(),
                    );
                  }
                },
              );
            }),
          )),
    );
  }
}

/*


class _BookmarkScreenState extends State<BookmarkScreen> {
  late BookmarkBloc _bloc;

  @override
  void initState() {
    _bloc = BookmarkBloc();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BlocBuilder<BookmarkBloc, BookmarkState>(
        builder: (context, state) {
          if (state.bookmarks.isEmpty) {
            return Center(
              child: Text("No Bookmarks Added Yet"),
            );
          }

          return ListView.builder(
            itemCount: state.bookmarks.length,
            itemBuilder: (context, index) {
              final bookmark = state.bookmarks[index];

              return ListTile(
                title: Text(bookmark.surahName),
                subtitle: Text("Ayah: ${bookmark.ayahNumber}"),
                onTap: () {
                  // Quran wahi ayat se start hoga
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      // builder: (_) => QuranScreen(
                      //   surahId: bookmark.surahId,
                      //   ayahNumber: bookmark.ayahNumber,
                      // ),
                      builder: (_)=> Container()
                    ),
                  );
                },
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    context.read<BookmarkBloc>().add(DeleteBookmark(index));
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}

 */
