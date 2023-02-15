import 'package:bookly_app/core/ulties/errors/failure_class.dart';
import 'package:bookly_app/features/Home/data/models/home_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo
{
  Future<Either< Failure , List<BookModel>>>fetchBestSellerBooks();
  Future<Either< Failure , List<BookModel>>>fetchFeaturedBooks();
}