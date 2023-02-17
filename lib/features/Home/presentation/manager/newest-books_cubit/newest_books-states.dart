import '../../../data/models/home_model.dart';

abstract class NewestBooksStates {}

class NewestBooksIntial extends NewestBooksStates{}
class NewestBooksLoading extends NewestBooksStates{}
class NewestBooksSuccess extends NewestBooksStates{
  final List<BookModel> books;

  NewestBooksSuccess(this.books);
}
class NewestBooksError extends NewestBooksStates{
  final String error;

  NewestBooksError(this.error);
}