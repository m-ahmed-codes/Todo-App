import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/Routers/app_routes_constant.dart';
import 'package:todo_app/Screens/IntroPages/onBoarding_ThirdPages.dart';
import 'package:todo_app/bloc/onboardingBloc/on_boarding_bloc_bloc.dart';

class Welcome_Screen extends StatefulWidget {
  const Welcome_Screen({super.key});

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
   OnBoardingBlocBloc OnBoardingBloc = OnBoardingBlocBloc();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<OnBoardingBlocBloc, OnBoardingBlocState>(
         bloc: OnBoardingBloc,


        listener: (context, state) {
          if (state is NavigateOnBackPage_State) {
          context.pushNamed(MyAppRoutesConstant.OnboardingPage_Three);
        } 
        
        },
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      OnBoardingBloc.add(NavigateOnBackPage_Event());
                    },
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Welcome to UpTodo',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 10,
              child: Text(
                "Please login to your account or create new account to continue",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w200),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 430,
            ),
            ElevatedButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(
                    136, 117, 255, 2), // background (button) color
                foregroundColor: Colors.white, // foreground (text) color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // sharp corners
                ),
                // padding: EdgeInsets.all(value),
                minimumSize: Size(
                    MediaQuery.of(context).size.width - 25, 50), // button size
              ),
              child: Text('LOGIN'),
            ),
            SizedBox(
              height: 30,
            ),
            OutlinedButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, // foreground (text) color
                side: BorderSide(
                    color: Color.fromRGBO(136, 117, 255, 2),
                    width: 1), // border color and width
                minimumSize: Size(
                    MediaQuery.of(context).size.width - 25, 50), // button size
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // sharp corners
                ),
              ),
              child: Text('CREATE ACCOUNT'),
            ),
          ],
        ),
      ),
    );
  }
}
