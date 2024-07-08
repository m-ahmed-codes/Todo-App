import 'package:go_router/go_router.dart';
import 'package:todo_app/Routers/app_routes_constant.dart';
import 'package:todo_app/Screens/AuthScreen/LoginScreen.dart';
import 'package:todo_app/Screens/IntroPages/WelcomeScreen.dart';
import 'package:todo_app/Screens/IntroPages/onBoarding_ThirdPages.dart';
import 'package:todo_app/Screens/IntroPages/onBoarding_secondPage.dart';
import 'package:todo_app/Screens/IntroPages/onboardingFirst.dart';

import '../splashScreen/splashScreen.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    // GoRoute(
    //   name: MyAppRoutesConstant.splashRouteName, 
    //   path: '/',
    //   builder: (context, state) => SplashScreen(),

    // ),
    GoRoute(
      name: MyAppRoutesConstant.splashRouteName, 
      path: '/',
      builder: (context, state) => LoginScreen(),

    ),
    GoRoute(
      name: MyAppRoutesConstant.OnboardingPage_one,
      path: '/OnBoardingPage_One',
      // builder: (context, state) => LoginScreen(),
      builder: (context, state) => OnBoasrdFirst_page(),
    ),
    GoRoute(
      name: MyAppRoutesConstant.OnboardingPage_Two,
      path: '/OnboardingPageTwo',
      builder: (context, state) => OnBoardingSecond_Page(),
    ),
    GoRoute(
      name: MyAppRoutesConstant.OnboardingPage_Three,
      path: '/OnboardingPageThree',
      builder: (context, state) => OnboardingThird_page(),
    ),
    GoRoute(
      name: MyAppRoutesConstant.WelcomingScreen,
      path: '/WelcomingScreen',
      builder: (context, state) => Welcome_Screen(),
    ),
  ],
);
