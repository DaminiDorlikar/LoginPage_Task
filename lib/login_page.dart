import 'package:flutter/material.dart';
import 'package:untitled2/last_screeen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  validator() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print('Validated');
    } else {
      print('From is not Validated');
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _userName = TextEditingController();
    TextEditingController _passWord = TextEditingController();

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              ClipPath(
                clipper: DrawClip1(),
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF192A56).withOpacity(0.5),
                        Color(0xFF192A56).withOpacity(0.8),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: DrawClip(),
                child: Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF192A56),
                        Color(0xFF3088e2),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                    ),
                  ),
                ),
              ),
              Container(
                height: size.height,
                width: size.width,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 40, top: 100),
                        child: Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40, top: 10),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 110),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _userName,
                                validator: (String? value) {
                                  if (value == null ||
                                      value.trim().length == 0) {
                                    return 'Please Enter Your Full Name';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF192A56)),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF192A56)),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF192A56),
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    hintText: ' Enter User Name',
                                    hintStyle:
                                        TextStyle(color: Color(0xFF192A56)),
                                    labelText: 'UserName',
                                    labelStyle:
                                        TextStyle(color: Color(0xFF192A56))),
                              ),
                              SizedBox(
                                height: 18,
                              ),
                              TextFormField(
                                controller: _passWord,
                                validator: (String? value) {
                                  if (value == null ||
                                      value.trim().length <= 6) {
                                    return 'Password should be atleast 6 character';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF192A56)),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF192A56)),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF192A56),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  hintText: ' Enter Password',
                                  hintStyle:
                                      TextStyle(color: Color(0xFF192A56)),
                                  labelText: 'Password',
                                  labelStyle:
                                      TextStyle(color: Color(0xFF192A56)),
                                ),
                                obscureText: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width / 2.8,
                          top: 20,
                        ),
                        child: Text(
                          'FORGET PASSWORD ?',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF192A56),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {
                            //   Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => LastScreen()),
                            //   );
                            validator();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LastScreen()),
                            );
                            var _username = _userName.text;
                            var _password = _passWord.text;
                            print('User Name:' + _username);
                            print('Password :' + _password);
                          },
                          child: Material(
                            elevation: 10,
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 200,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF192A56),
                                      //0xFF46ddbf
                                      Color(0xFF46ddbf).withOpacity(0.8),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: Color(0xFF31b8b1).withOpacity(0.5),
                                  //0xFF31b8b1
                                  width: 2,
                                ),
                              ),
                              height: 40,
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width / 3,
                            right: size.width / 3,
                            top: 30),
                        child: Row(
                          children: <Widget>[
                            Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  'https://i.postimg.cc/6qMTfNpM/google-symbol.png',
                                  height: 40,
                                  width: 40),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Material(
                              elevation: 10,
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                  'https://i.postimg.cc/L4vj5bmm/facebook-1.png',
                                  height: 40,
                                  width: 40),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Text(
                          'Dont have an account ?',
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF192A56),
                              //0xFF46ddbf

                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget input(
  String hint,
  bool pass,
) {
  return Container(
    child: TextField(
      decoration: InputDecoration(
        hintText: hint,
        fillColor: Color(0xFF192A56),
        contentPadding: EdgeInsets.only(top: 15, bottom: 15),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF192A56), width: 2.0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF192A56), width: 1.0),
        ),
      ),
    ),
  );
}

class DrawClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width, 50.0), radius: 150));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width * 0.3, 50.0), radius: 200));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
