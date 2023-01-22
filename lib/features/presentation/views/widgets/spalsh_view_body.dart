import 'package:bookly_app/core/ulties/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
                Image.asset(Assets.logo),
           ],
         ),
    );
  }
}
