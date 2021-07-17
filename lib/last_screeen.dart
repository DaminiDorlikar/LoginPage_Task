import 'package:flutter/material.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF192A56),
        title: Center(
          child: Text(
            'Welcome To Login Page',
            style: TextStyle(
              //decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.wavy,
              color: Colors.white,
              backgroundColor: Color(0xFF192A56),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            'Finally You Logged In'
            ' 🥰🥰🥰!!!!',
            style: TextStyle(
              color: Color(0xFF192A56),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
