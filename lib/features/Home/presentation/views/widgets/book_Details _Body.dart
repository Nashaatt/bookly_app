import 'package:bookly_app/core/ulties/assets.dart';
import 'package:bookly_app/core/ulties/router.dart';
import 'package:bookly_app/core/ulties/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_book_deta_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/similer_listview.dart';
import 'package:flutter/material.dart';

import 'custom_button.dart';

class BookDetailsBody extends StatelessWidget {
  BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomBookAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.17),
                  child: Image.asset(Assets.itemImg),
                ),
                SizedBox(height: 20.0,),
                Text(
                  'The Jungle Book',
                  style: Styles.textStyle30.copyWith(fontFamily: 'Kavoon'),
                ),
                SizedBox(height: 10.0,),
                Text(
                  'Riyadh Killing',
                  style: Styles.textStyle18.copyWith(color: Colors.grey),
                ),
                SizedBox(height: 10.0,),
                RowRatingWidget(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                SizedBox(height: 20.0,),
                BookDetailsButton(),
                SizedBox(height: 30.0,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle18,
                  ),
                ),
                SizedBox(height: 20.0,),
                SimillerListView(),
                SizedBox(height: 40.0,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}



