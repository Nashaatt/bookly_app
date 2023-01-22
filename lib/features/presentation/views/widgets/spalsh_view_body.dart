import 'package:bookly_app/core/ulties/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;


  @override
  void initState() {
    animationController = AnimationController(
        vsync: this ,
        duration: const Duration(
        seconds: 1,
    ));

    slidingAnimation =
        Tween<Offset>(begin: Offset(0,10) , end: Offset.zero).animate(animationController);

    animationController.forward();
    slidingAnimation.addListener(() {
      setState(() {

      });
    });
  }

  @override
  void dispose() {
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
         body: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
                Image.asset(Assets.logo),
                const SizedBox(height: 5.0,),
                SlideTransition(
                  position: slidingAnimation,
                  child: const Text(
                      'Read Free Books',
                    textAlign: TextAlign.center,
                  ),
                ),
           ],
         ),
    );
  }
}
