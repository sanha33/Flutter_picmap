import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_gifs/loading_gifs.dart';
import 'signUp_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<SignUpPage> {
  TextEditingController idController = TextEditingController();
  TextEditingController nicknameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final _signupKey = GlobalKey<FormState>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget emptySection = Container(
      padding: const EdgeInsets.all(20),
      child: Text(
        '',
        softWrap: true,
      ),
    );

    return MaterialApp(
      key: _signupKey,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            brightness: Brightness.light,
            iconTheme: IconThemeData(
              color: Colors.black,
            )),
        body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
              //logo
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 40),
                    Image.asset(
                      'images/logo.jpg',
                      width: 295 / 5,
                      height: 250 / 5,
                    ),
                    SizedBox(height: 10),
                    Image.asset(
                      'images/PicMap.jpg',
                      width: 362 / 5,
                      height: 122 / 5,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextFormField(
                        style: TextStyle(fontSize: 14.0),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter ID';
                          }
                          return null;
                        },
                        controller: idController,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          border: OutlineInputBorder(),
                          labelText: 'ID',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        obscureText: true,
                        style: TextStyle(fontSize: 14.0),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Nickname';
                          }
                          return null;
                        },
                        controller: nicknameController,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          border: OutlineInputBorder(),
                          labelText: 'Nickname',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        obscureText: true,
                        style: TextStyle(fontSize: 14.0),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter PassWord';
                          }
                          return null;
                        },
                        controller: passwordController,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          border: OutlineInputBorder(),
                          labelText: 'PassWord',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        obscureText: true,
                        style: TextStyle(fontSize: 14.0),
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Please enter Email';
                          }
                          return null;
                        },
                        controller: emailController,
                        decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
              ]),

              //Log IN button
              Container(
                child: Column(children: <Widget>[
                  RaisedButton(
                    padding: EdgeInsets.fromLTRB(100,5,100,5),
                    child: Text('Sign Up',
                        style: TextStyle(fontSize: 18)),
                    onPressed: () {
                      if (_signupKey.currentState.validate()) {
                        Navigator.pop(context);
                      }
                    },

                    /*
                    onPressed: () {
                    print('눌림!');

                },
                   */
                    textColor: Colors.white,
                    color: Colors.black,
                  ),
                  SizedBox(height: 100),
                ]),
              ),

              //another login
            ])),
      ),
    );
  }

  void showMessage() {
    print("clicked!");
  }
}
