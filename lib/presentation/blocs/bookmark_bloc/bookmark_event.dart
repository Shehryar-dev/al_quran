part of 'bookmark_bloc.dart';

abstract class BookmarkEvent extends Equatable {
  const BookmarkEvent();

  @override
  List<Object> get props => [];
}

class AddBookmark extends BookmarkEvent {
  final BookmarkModel bookmark;

  const AddBookmark(this.bookmark);
}

class FetchBookmarks extends BookmarkEvent {}

class DeleteBookmark extends BookmarkEvent {
  final int surahId;

  const DeleteBookmark(this.surahId);
}

class SaveLastRead extends BookmarkEvent {
  final BookmarkModel lastRead;

  const SaveLastRead(this.lastRead);
}
