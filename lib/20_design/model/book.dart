import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  const factory Book({
    required int id,
    required String title,
    required String author,
    required String summary,
    required DateTime publishedDate,
    required bool isBorrowable,
  }) = _Book;

  factory Book.fromJson(Map<String, Object?> json) => _$BookFromJson(json);
}

extension BookInfo on Book {
  String toInfo() {
    return 'Book(id: $id, title: $title, author: $author, summary: $summary, publishedDate: ${publishedDate.toString().substring(0, 10)}, isBorrowable: $isBorrowable)';
  }
}
