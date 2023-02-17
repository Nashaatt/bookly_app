import 'package:flutter/material.dart';

import 'custom_listview_item.dart';

class FeturedBooksListView extends StatelessWidget {
   FeturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index) => const CustomListViewItem(),
        itemCount: 4,
      ),
    );
  }
}
