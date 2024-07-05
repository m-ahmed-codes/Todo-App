import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/Routers/app_routes_constant.dart';
import 'package:todo_app/Screens/IntroPages/ProgressBar.dart';

class OnBoardingSecond_Page extends StatefulWidget {
  const OnBoardingSecond_Page({super.key});

  @override
  State<OnBoardingSecond_Page> createState() => _OnBoardingSecond_PageState();
}

class _OnBoardingSecond_PageState extends State<OnBoardingSecond_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 20,
            ),
            InkWell(child: Text(
              "SKIP",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),onTap: () {
              context.goNamed(MyAppRoutesConstant.WelcomingScreen);
            },)
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Container(
            child: Image(
                image: AssetImage(
              'assets/intropagesImages/Frame162.png',
            )),
            height: 270,
            // width: 230,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Progressbar(index: 1,),
        SizedBox(
          height: 50,
        ),
        Text(
          "Create daily routine",
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text(
              "In Uptodo  you can create your personalized routine to stay productive",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w200),
              textAlign: TextAlign.center,
            ),
            width: 300,
          ),
        ),
        SizedBox(
          height: 90,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            InkWell(
              onTap: (){
                context.pushNamed(MyAppRoutesConstant.OnboardingPage_one);

              },
              child:   Padding(
                padding: const EdgeInsets.only(left:30.0),
                child: Text("Back" ,style: TextStyle(color: Colors.grey,fontSize: 18 ),),
              ),
            ),
          


            Padding(
              padding: const EdgeInsets.only(right : 20.0),
              child: ElevatedButton(
                onPressed: () {
                  context.pushNamed(MyAppRoutesConstant.OnboardingPage_Three);
                },
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(136, 117, 255, 2), // background (button) color
                  foregroundColor: Colors.white, // foreground (text) color
                     shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // sharp corners
                  ),
                    
                  minimumSize: Size(100, 50), // button size
                ),
                child: Text('NEXT'),
              ),
            ),
            
          ],
        ),
      ],
    ));
  }
}