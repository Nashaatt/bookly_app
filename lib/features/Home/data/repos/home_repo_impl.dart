import 'package:bookly_app/core/ulties/api_service.dart';
import 'package:bookly_app/features/Home/data/models/home_model.dart';
import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/errors/failure_class.dart';

class HomeRepoImpl implements HomeRepo
{
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
   try
   {
     var data = await apiService.get(url: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');

     List<BookModel> books = [];
     for(var item in data['items']){
        books.add(BookModel.fromJson(item));
     }

     return right(books);
     
   } catch(e){
      if(e is DioError)
        {
          return left(ServerFailure.fromDioError(e));
        }
      return left(ServerFailure(e.toString()));
   }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try
    {
      var data = await apiService.get(url: 'volumes?Filtering=free-ebooks&Sorting=newest&q=programming');

      List<BookModel> books = [];
      for(var item in data['items']){
        books.add(BookModel.fromJson(item));
      }

      return right(books);

    } catch(e){
      if(e is DioError)
      {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
