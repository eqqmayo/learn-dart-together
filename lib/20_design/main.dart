import 'package:learn_dart_together/20_design/mock_data_source/mock_book_data_source.dart';
import 'package:learn_dart_together/20_design/mock_data_source/mock_checkout_data_source.dart';
import 'package:learn_dart_together/20_design/mock_data_source/mock_member_data_source.dart';
import 'package:learn_dart_together/20_design/repository_impl/book_repository_impl.dart';
import 'package:learn_dart_together/20_design/repository_impl/checkout_repository_impl.dart';
import 'package:learn_dart_together/20_design/repository_impl/member_repository_impl.dart';
import 'package:learn_dart_together/20_design/service/my_library.dart';

Future<void> main() async {
  final memberDataSource = MockMemberDataSource();
  final bookDataSource = MockBookDataSource();
  final checkoutDataSource = MockCheckoutDataSource();

  final myLibrary = MyLibrary(
    MemberRepositoryImpl(memberDataSource),
    BookRepositoryImpl(bookDataSource),
    CheckoutRepositoryImpl(
        checkoutDataSource, memberDataSource, bookDataSource),
  );
  await myLibrary.displayMain();
}