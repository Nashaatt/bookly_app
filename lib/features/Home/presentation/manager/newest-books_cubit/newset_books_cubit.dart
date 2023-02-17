import 'package:bookly_app/features/Home/presentation/manager/newest-books_cubit/newest_books-states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/repos/home_repo.dart';


  class NewestBooksCubit extends Cubit<NewestBooksStates>{
  NewestBooksCubit(this.homeRepo) : super(NewestBooksIntial());

  HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async{

    emit(NewestBooksLoading());

    var result = await homeRepo.fetchBestSellerBooks();

    result.fold((failure)
    {
      emit(NewestBooksError(failure.toString()));
    }, (books)
    {
      emit(NewestBooksSuccess(books));
    });
  }
}