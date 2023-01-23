import 'package:flutter/material.dart';

import '../../../../../core/ulties/assets.dart';

class SimillerListView extends StatelessWidget {
  const SimillerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index) => Image.asset(Assets.itemImg , height: 190,),
        itemCount: 10,
      ),
    );
  }
}
