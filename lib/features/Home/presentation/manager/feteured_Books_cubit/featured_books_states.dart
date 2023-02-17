import '../../../data/models/home_model.dart';

abstract class FeaturedBooksStates {}

class FeaturedBooksInitial extends FeaturedBooksStates{}

class FeaturedBooksLoading extends FeaturedBooksStates{}

class FeaturedBooksSuccess extends FeaturedBooksStates{
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}

class FeaturedBooksError extends FeaturedBooksStates{
  final String error;

  FeaturedBooksError(this.error);
}