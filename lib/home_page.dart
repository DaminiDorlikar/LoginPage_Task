import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:untitled2/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var pages = [
    PageViewModel(
      title: "Welcome to Login page",
      body: "Here You can login with the next page...",
      image: Center(
        child: Image.asset("Assests/loginPage22222.png", height: 300.0),
      ),
      decoration: PageDecoration(
        pageColor: Colors.white,
        bodyTextStyle: TextStyle(color: Color(0xFF192A56), fontSize: 18),
        titleTextStyle: TextStyle(
            color: Color(0xFF192A56),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ),
    PageViewModel(
      title: "Welcome to Login page",
      body: "Here You can login with the next page...",
      image: Center(
        child: Image.asset(
          "Assests/LoginPAage3333.png",
          height: 300.0,
        ),
      ),
      decoration: PageDecoration(
        pageColor: Colors.white,
        bodyTextStyle: TextStyle(color: Color(0xFF192A56), fontSize: 18),
        titleTextStyle: TextStyle(
            color: Color(0xFF192A56),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ),
    PageViewModel(
      title: "Welcome to Login page",
      body: "Here You can login with the next page...",
      image: Center(
        child: Image.asset(
          "Assests/loginPage11.png",
          height: 3000.0,
        ),
      ),
      decoration: PageDecoration(
        pageColor: Colors.white,
        bodyTextStyle: TextStyle(color: Color(0xFF192A56), fontSize: 18),
        titleTextStyle: TextStyle(
            color: Color(0xFF192A56),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: pages,
        onDone: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        },
        onSkip: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        },
        showSkipButton: true,
        skip: const Icon(
          Icons.skip_previous,
          color: Color(0xFF192A56),
        ),
        next: const Icon(
          Icons.skip_next,
          color: Color(0xFF192A56),
        ),
        done: const Text(
          "Done",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF192A56),
          ),
        ),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Color(0xFF192A56),
            color: Color(0xFF192A56),
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      ),
    );
  }
}
