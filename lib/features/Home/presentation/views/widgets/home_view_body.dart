import 'package:bookly_app/core/ulties/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_appbar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body: Container(
         child: Column(
           children: const[
              CustomAppBar(),

           ],
         ),
       ),
    );
  }
}