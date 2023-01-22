import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/ulties/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0 , vertical: 40),
      child: Row(
        children: [
          Image.asset(
            Assets.logo,
            height: 20.0,
          ),

          Spacer(),

          IconButton(
            onPressed: (){},
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
