import 'package:bookly_app/core/ulties/assets.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/ulties/styles.dart';
import 'bestSeller_listview.dart';
import 'bestSeller_listview_item.dart';
import 'custom_appbar.dart';
import 'feturedBooksLstView.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 20.0),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             // Custom AppBar
             const CustomAppBar(),
             // Horizontal ListView
             FeturedBooksListView(),
             // Best Seller Text
             const Text(
                 'Best Seller',
               style: Styles.textStyle18,
             ),
             SizedBox(height: 20.0,),
             // BestSellerListView
             BestSellerListView(),
           ],
         ),
       ),
    );
  }
}








