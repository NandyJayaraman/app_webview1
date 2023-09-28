import 'package:app_webview1/landingPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
                     
   @override
   Widget build(BuildContext context) {
      // var height  = MediaQuery.of(context).size.height * 1;
      // var width   = MediaQuery.of(context).size.width * 1;
       
    return AnimatedSplashScreen(
        splash: Image.asset(
          'assets/splash_logo.png',
          fit: BoxFit.cover,
          // height: double.infinity,
          // width: double.infinity,
          // alignment: Alignment.center,
        ),
       splashIconSize: double.infinity,
        centered: true,
        duration: 5000,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.topToBottom,
        nextScreen: const landingPage()

      );
        
  }
}