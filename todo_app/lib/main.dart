import 'package:flutter/material.dart';
import 'package:splash_view/splash_view.dart';
import 'package:todo_app/Screens/IntroPages/onboardingFirst.dart';
import 'package:todo_app/theme/themeApp.dart';
import 'package:go_router/go_router.dart';
import './Routers/app_routes_config.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: theme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      // routeInformationParser: router,
      
    );
  }
}

