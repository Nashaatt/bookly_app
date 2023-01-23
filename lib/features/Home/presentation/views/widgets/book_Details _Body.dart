import 'package:bookly_app/core/ulties/assets.dart';
import 'package:bookly_app/core/ulties/styles.dart';
import 'package:bookly_app/features/Home/presentation/views/widgets/custom_book_deta_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsBody extends StatelessWidget {
  BookDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
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
        ],
      ),
    );
  }
}