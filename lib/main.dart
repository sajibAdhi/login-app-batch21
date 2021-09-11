import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Nunito"),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: LoginPage(),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _pageState = 0;
  var _backgroundColor = Colors.white;
  var _headingColor = Color(0xFFB40284A);

  @override
  Widget build(BuildContext context) {
    switch (_pageState) {
      case 0:
        _backgroundColor = Color(0xFFBd5d3e9);
        _headingColor = Color(0xFFB40284A);
        break;
      case 1:
      case 2:
        _backgroundColor = Color(0xFFBd34C59);
        _headingColor = Colors.white;
        break;
    }
    return AnimatedContainer(
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(
        microseconds: 3000,
      ),
      color: _backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          /**
             * Header Texts Section
             */
          Container(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 100),
                  child: Text(
                    "Learn Flutter",
                    style: TextStyle(
                      color: _headingColor,
                      fontSize: 28,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                  ),
                  child: Text(
                    "We make learning Easy,Join \n'Apps Development Training - Cross Platform,\n Under ICT Division' \nfor Free",
                    style: TextStyle(
                      color: _headingColor,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          /**
             * Image Section
             */
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: Center(
              child: Image.asset("assets/images/welcome_image.png"),
            ),
          ),
          /**
             * Footer Button
             */
          GestureDetector(
            onTap: () {
              setState(() {
                if (_pageState != 0)
                  _pageState = 0;
                else
                  _pageState = 1;
              });
            },
            child: Container(
              child: Container(
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFB40284A),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
