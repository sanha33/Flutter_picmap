import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          "PicMap",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: [
            SizedBox(height: 80),
            Column(
              children: [
                Image.asset(
                  'images/logo.jpg',
                  width: 120,
                  height: 120,
                ),
                Image.asset(
                  'images/appName.jpg',
                  width: 120,
                  height: 40,
                ),
                SizedBox(
                  height: 50,
                ),
                SignUpForm(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  SignUpFormState createState() {
    return SignUpFormState();
  }
}

class SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController idController = TextEditingController();
  TextEditingController nicknameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget emptySection = Container(

      padding: const EdgeInsets.all(120),

      child: Text(
        '',
        softWrap: true,

      ),
    );


    return MaterialApp(


      home: Scaffold(

        body: SafeArea(


          child: Column(

            children: <Widget>[
              Container(
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: <Widget>[
                    SizedBox(height: 120),
                    Image.asset(
                      'images/profile2.jpg',
                      width: 295 / 2,
                      height: 250 / 2,

                    ),
                    FlatButton(
                      child: Text('사진 수정', style: TextStyle(fontSize: 13)),
                      onPressed: () {
                        // 눌렀을 때 두 번째 route로 이동합니다.

                      },

                      textColor: Colors.blueAccent,
                    ),
                    SizedBox(height: 10),
                  ],

                ),
              ),


              Container(
                child: Row(
                  children: <Widget>[

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
                            style: TextStyle(
                                fontSize: 14.0
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter Email';
                              }
                              return null;
                            },
                            controller: idController,

                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(
                                  20.0, 15.0, 20.0, 15.0),
                              border: OutlineInputBorder(),
                              labelText: 'Id',

                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize: 14.0
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter Nickname';
                              }
                              return null;
                            },
                            controller: nicknameController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(
                                  20.0, 15.0, 20.0, 15.0),
                              border: OutlineInputBorder(),
                              labelText: 'Nickname',

                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize: 14.0
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter Nickname';
                              }
                              return null;
                            },
                            controller: passwordController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(
                                  20.0, 15.0, 20.0, 15.0),
                              border: OutlineInputBorder(),
                              labelText: 'Password',

                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize: 14.0
                            ),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'Please enter Nickname';
                              }
                              return null;
                            },
                            controller: emailController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(
                                  20.0, 15.0, 20.0, 15.0),
                              border: OutlineInputBorder(),
                              labelText: 'Emil',

                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),


                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                  ],

                ),

              ),


              Container(

                child: RaisedButton(
                  padding: EdgeInsets.fromLTRB(100, 5, 100, 5),
                  child: Text('회원정보 수정', style: TextStyle(fontSize: 18)),
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
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


              ),

            ],
          ),
        ),
      ),
    );
  }
}

