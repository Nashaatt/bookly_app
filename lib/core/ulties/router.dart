import 'package:bookly_app/features/Home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/Search/presentaion/views/search_view.dart';
import 'package:bookly_app/features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../features/Home/presentation/views/home_view.dart';

abstract class AppRouter {

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context , state) => SplashView(),
      ),

      GoRoute(
        path: "/homeView",
        builder: (context , state) => HomeView(),
      ),

      GoRoute(
        path: "/bookDetailsView",
        builder: (context , state) => BookDetailsScreen(),
      ),

      GoRoute(
        path: "/bookSearchView",
        builder: (context , state) => SearchView(),
      ),
    ],
  );
}