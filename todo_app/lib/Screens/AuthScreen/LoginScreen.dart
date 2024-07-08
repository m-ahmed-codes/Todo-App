import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController UsernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              InkWell(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(
            height: 30,
          ),

          // ****************************************************

          Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 15, bottom: 20),
                  child: Text(
                    "Username",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w100),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(151, 151, 151, 100),
                              width: 1)),
                      filled: true,
                      fillColor: Color.fromRGBO(29, 29, 29, 100),
                      hintText: "Enter your UserName",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(83, 83, 83, 100),
                          fontWeight: FontWeight.w200),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.white)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  cursorColor: Colors.white,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  margin: EdgeInsets.only(left: 15, bottom: 20),
                  child: Text(
                    "Password",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w100),
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 20),
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(15),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(151, 151, 151, 100),
                              width: 1)),
                      filled: true,
                      fillColor: Color.fromRGBO(29, 29, 29, 100),
                      hintText: "**********",
                      hintStyle: TextStyle(
                          color: Color.fromRGBO(83, 83, 83, 100),
                          fontWeight: FontWeight.w200),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.white)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white))),
                  cursorColor: Colors.white,
                ),
              ),
            ],
          )),

          SizedBox(
            height: 50,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                // padding: EdgeInsets.only(left: 30),
                disabledBackgroundColor: Color.fromRGBO(136, 117, 255, 100),
                disabledForegroundColor: Color.fromRGBO(136, 117, 255, 100),

                backgroundColor: Color.fromRGBO(
                    136, 117, 255, 2), // background (button) color
                foregroundColor: Colors.white, // foreground (text) color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // sharp corners
                ),
                // padding: EdgeInsets.all(value),
                minimumSize: Size(
                    MediaQuery.of(context).size.width - 35, 50), // button size
              ),
              child: Text('LOGIN'),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.only(left: 18, right: 22),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "or",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),

          Container(
            margin: EdgeInsets.only(left: 15),
            child: OutlinedButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, // foreground (text) color
                side: BorderSide(
                    color: Color.fromRGBO(136, 117, 255, 2),
                    width: 1), // border color and width
                minimumSize: Size(
                    MediaQuery.of(context).size.width - 35, 50), // button size
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // sharp corners
                ),
              ),
              child: Text(
                'Login with Google',
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, top: 25),
            child: OutlinedButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, // foreground (text) color
                side: BorderSide(
                    color: Color.fromRGBO(136, 117, 255, 2),
                    width: 1), // border color and width
                minimumSize: Size(
                    MediaQuery.of(context).size.width - 35, 50), // button size
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5), // sharp corners
                ),
              ),
              child: Text(
                'Login with Apple',
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an Account? ",
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 13)),
              InkWell(
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.white70,fontSize: 13),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


// Form(
//               child: Column(
//             children: [
//               Expanded(
//                 child: TextFormField(
//                   controller: UsernameController,
//                   style: TextStyle(
//                     fontFamily: 'Lato',
//                     fontStyle: FontStyle.normal,
//                     fontWeight: FontWeight.w400,
//                     fontSize: 16,
//                     height: 1.505,
//                     color: Color(0xFF535353),
//                   ),
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Enter your Username',
//                     hintStyle: TextStyle(
//                       color: Color(0xFF535353),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           )),