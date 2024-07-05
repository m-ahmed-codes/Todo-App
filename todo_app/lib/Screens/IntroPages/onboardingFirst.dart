import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:progress_indicator/progress_indicator.dart';
import 'package:todo_app/Routers/app_routes_constant.dart';
import 'package:todo_app/Screens/IntroPages/ProgressBar.dart';


class OnBoasrdFirst_page extends StatefulWidget {
  const OnBoasrdFirst_page({super.key});

  @override
  State<OnBoasrdFirst_page> createState() => _OnBoasrdFirst_pageState();
}

class _OnBoasrdFirst_pageState extends State<OnBoasrdFirst_page> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

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
              context.pushNamed(MyAppRoutesConstant.WelcomingScreen);
            },)
            
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Image(
              image: AssetImage(
            'assets/intropagesImages/Group182.png',
          )),
          height: 270,
          width: 270,
        ),
        SizedBox(
          height: 50,
        ),
        Progressbar(index: 0,),
        SizedBox(
          height: 50,
        ),
        Text(
          "Manage your tasks",
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
              "You can easily manage all of your daily tasks in DoMe for free",
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.pushNamed(MyAppRoutesConstant.OnboardingPage_Two);
                },
                
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(136, 117, 255, 2), // background (button) color
                  foregroundColor: Colors.white, // foreground (text) color
                     shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // sharp corners
                  ),
                    // padding: EdgeInsets.all(value),
                  minimumSize: Size(100, 50), // button size
                ),
                child: Text('NEXT'),
              ),
            SizedBox(width: 20,)
          ],
        ),
      ],
    ));
  }
}

