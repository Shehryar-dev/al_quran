import 'package:hive/hive.dart';
part 'bookmark_model.g.dart';

@HiveType(typeId: 0)
class BookmarkModel {
  @HiveField(0)
  final int surahId;

  @HiveField(1)
  final String surahName;

  @HiveField(2)
  final int ayahNumber;

  @HiveField(3)
  final String ayahText;

  @HiveField(4)
  final String transliteration;

  @HiveField(5)
  final String type;

  @HiveField(6)
  final DateTime dateTime;



  BookmarkModel({
    required this.surahId,
    required this.surahName,
    required this.ayahNumber,
    required this.ayahText,
    required this.transliteration,
    required this.type,
    required this.dateTime
  });
}
