import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:equatable/equatable.dart';
part 'bookmark_event.dart';
part 'bookmark_state.dart';
/*
class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  var box = Hive.box<BookmarkModel>('bookmark_box');

  BookmarkBloc() : super(BookmarkState(bookmarks: [])) {
    on<AddBookmark>((event, emit) async {
      await box.add(event.bookmark);
      emit(state.copyWith(bookmarks: box.values.toList()));
    });

    on<DeleteBookmark>((event, emit) async {
      await box.deleteAt(event.surahId);
      emit(state.copyWith(bookmarks: box.values.toList()));
    });


    on<FetchBookmarks>((event, emit) {
      emit(state.copyWith(bookmarks: box.values.toList()));
    });
  }
}
*/
class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  late Box<BookmarkModel> box; // Maintain a single instance of the box

  BookmarkBloc() : super(BookmarkState(bookmarks: [])) {
    _init(); // Initialize the box once

    on<AddBookmark>((event, emit) async {
      await box.add(event.bookmark);
      emit(state.copyWith(bookmarks: box.values.toList()));
    });

    on<DeleteBookmark>((event, emit) async {
      await box.deleteAt(event.surahId);
      emit(state.copyWith(bookmarks: box.values.toList()));
    });

    on<FetchBookmarks>((event, emit) {
      emit(state.copyWith(bookmarks: box.values.toList()));
    });
  }

  Future<void> _init() async {
    if (!Hive.isBoxOpen('bookmark_box')) {
      box = await Hive.openBox<BookmarkModel>('bookmark_box');
    } else {
      box = Hive.box<BookmarkModel>('bookmark_box');
    }

    // Fetch initial data
    add(FetchBookmarks());

    // Listen for changes in the box
    box.watch().listen((event) {
      add(FetchBookmarks());
    });
  }
}
