import 'package:bookly_app/core/ulties/styles.dart';
import 'package:bookly_app/features/Search/presentaion/views/widgets/custom_search_field.dart';
import 'package:flutter/material.dart';

import '../../../Home/presentation/views/widgets/bestSeller_listview_item.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextField(),
              SizedBox(height: 30.0,),
              Text(
                  'Search Results',
                style: Styles.textStyle18,
              ),
              SizedBox(height: 30.0,),
              Expanded(
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context , index) => BestSellerWidget(),
                    itemCount: 10,
                ),
              ),
            ],
          ),
        ),
    ));
  }
}
