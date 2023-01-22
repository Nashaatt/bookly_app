import 'package:flutter/material.dart';

import '../../../../../core/ulties/assets.dart';
import '../../../../../core/ulties/styles.dart';
import 'book_rating.dart';
import 'home_view_body.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    Assets.itemImg,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 20.0,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                child: Text('Harry Potter and The Global of Fire' , style: Styles.textStyle20, maxLines: 2,),
              ),
              SizedBox(height: 3.0,),
              Text('j.k  Rowling' , style: Styles.textStyle14,),
              SizedBox(height: 50.0,),
              Row(
                children: const [
                  Text('19.99\$'  , style: Styles.textStyle20,),
                  SizedBox(width: 60.0,),
                  RowRatingWidget(),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}