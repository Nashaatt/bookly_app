import 'package:flutter/material.dart';

import '../../../../../core/ulties/styles.dart';

class RowRatingWidget extends StatelessWidget {
  const RowRatingWidget({Key? key , required this.mainAxisAlignment}) : super(key: key);

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(Icons.star , color: Colors.yellow[500],),
        SizedBox(width: 6.0,),
        Text('4.9' , style: Styles.textStyle16,),
        SizedBox(width: 6.0,),
        Text('(2438)' , style: Styles.textStyle14.copyWith(color: Colors.grey),),
      ],
    );
  }
}