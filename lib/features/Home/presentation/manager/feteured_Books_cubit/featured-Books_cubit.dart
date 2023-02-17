import 'package:bookly_app/features/Home/data/repos/home_repo.dart';
import 'package:bookly_app/features/Home/presentation/manager/feteured_Books_cubit/featured_books_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates>{
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async{

    emit(FeaturedBooksLoading());

    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure)
    {
      emit(FeaturedBooksError(failure.toString()));
    }, (books)
    {
     emit(FeaturedBooksSuccess(books));
    });
  }
}