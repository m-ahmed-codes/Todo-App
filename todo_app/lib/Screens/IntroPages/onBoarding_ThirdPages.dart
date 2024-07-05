import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/Routers/app_routes_constant.dart';
import 'package:todo_app/Screens/IntroPages/ProgressBar.dart';

class OnboardingThird_page extends StatefulWidget {
  const OnboardingThird_page({super.key});

  @override
  State<OnboardingThird_page> createState() => _OnboardingThird_pageState();
}

class _OnboardingThird_pageState extends State<OnboardingThird_page> {
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
          height: 40,
        ),
        Container(
          child: Image(
              image: AssetImage(
            'assets/intropagesImages/Frame161.png',
          )),
          height: 270,
          width: 270,
        ),
        SizedBox(
          height: 50,
        ),
        Progressbar(index: 2,),
        SizedBox(
          height: 50,
        ),
        Text(
          "Orgonaize your tasks",
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
              "You can organize your daily tasks by adding your tasks into separate categories",
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
          height: 60,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: InkWell(onTap: (){context.pushNamed(MyAppRoutesConstant.OnboardingPage_Two);},child:  Text("Back" ,style: TextStyle(color: Colors.grey,fontSize: 18 ),),),
            ),
           
            Padding(
              padding: const EdgeInsets.only(right : 20.0),
              child: ElevatedButton(
                onPressed: () {
                  context.pushNamed(MyAppRoutesConstant.WelcomingScreen);
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
            ),
           
          ],
        ),
      ],
    ));
  }
}
                  // 