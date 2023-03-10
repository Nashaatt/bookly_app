import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/ulties/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20.0),
      child: Row(
        children: [
          Image.asset(
            Assets.logo,
            height: 20.0,
          ),

          Spacer(),

          IconButton(
            onPressed: (){
              GoRouter.of(context).push("/bookSearchView");
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
          ),

        ],
      ),
    );
  }
}
