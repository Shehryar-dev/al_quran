part of 'bookmark_bloc.dart';



class BookmarkState extends Equatable {
  final List<BookmarkModel> bookmarks;
  final BookmarkModel? lastRead;

  const BookmarkState({this.bookmarks = const [], this.lastRead});

  BookmarkState copyWith({List<BookmarkModel>? bookmarks, BookmarkModel? lastRead}) {
    return BookmarkState(
      bookmarks: bookmarks ?? this.bookmarks,
      lastRead: lastRead ?? this.lastRead,
    );
  }

  @override
  List<Object?> get props => [bookmarks, lastRead];
}
