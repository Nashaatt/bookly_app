import 'package:flutter/material.dart';

import '../../../../../core/ulties/styles.dart';

class RowRatingWidget extends StatelessWidget {
  const RowRatingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star , color: Colors.yellow[500],),
        SizedBox(width: 6.0,),
        Text('4.9' , style: Styles.textStyle16,),
        SizedBox(width: 6.0,),
        Text('(2438)' , style: Styles.textStyle14,),
      ],
    );
  }
}