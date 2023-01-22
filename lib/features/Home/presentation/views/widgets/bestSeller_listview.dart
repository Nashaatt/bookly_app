import 'package:flutter/material.dart';

import 'bestSeller_listview_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context , index) => BestSellerWidget(),
        itemCount: 4,
      ),
    );
  }
}