// BookDetailsButton => Free Preview


import 'package:flutter/material.dart';

import '../../../../../core/ulties/styles.dart';

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){},
          child: Container(
            width: 160,
            height: 60,
            child: Center(child: Text('19.99 \$' ,style: Styles.textStyle20.copyWith(color: Colors.black,), )),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
            ),
          ),
        ),
        GestureDetector(
          onTap: (){},
          child: Container(
            width: 160,
            height: 60,
            child: Center(child: Text('Free Preview' , style: Styles.textStyle18)),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Color(0xffa60318),
              borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}