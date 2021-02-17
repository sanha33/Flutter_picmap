import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_gifs/loading_gifs.dart';
import 'signUp_page.dart';


class login_page extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => new _State();
}



class _State extends State<login_page> {
  TextEditingController idController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _loginKey = GlobalKey<FormState>();

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
      key: _loginKey,

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
            child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  //logo
                  Container(
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.center,

                      children:<Widget>[
                        SizedBox(height: 40),
                        Image.asset(
                          'images/logo.jpg',
                          width: 295/5,
                          height: 250/5,

                        ),
                        SizedBox(height: 10),
                        Image.asset(
                          'images/PicMap.jpg',
                          width: 362/5,
                          height: 122/5,
                        ),
                        SizedBox(height: 20),

                      ],

                    ),

                  ),
                  Row(

                      children:<Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        Expanded(

                          flex: 7,

                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:<Widget>[
                              TextFormField(
                                style: TextStyle(
                                    fontSize: 14.0
                                ),
                                validator: (value) {
                                  if (value.isEmpty) {
                                    return 'Please enter ID';
                                  }
                                  return null;
                                },
                                controller: idController,

                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                  border: OutlineInputBorder(),
                                  labelText: 'ID',

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
                                    return 'Please enter PassWord';
                                  }
                                  return null;
                                },
                                controller: passwordController,
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                  border: OutlineInputBorder(),
                                  labelText: 'PassWord',

                                ),
                              ),
                              FlatButton(onPressed: (){
                                //forgot password screen
                              }, textColor:Colors.black38,
                                child: Text('Forgot Password'),)
                            ],
                          ),


                        ),
                        Expanded(
                          flex:1,
                          child:Container(),
                        ),
                      ]



                  ),
                  //sign up
                  Container(
                    alignment: Alignment(0.8, 0.0),
                    child:FlatButton(
                      child: Text('Sign Up', style: TextStyle(fontSize: 15)),
                      onPressed: () {

                        // 눌렀을 때 두 번째 route로 이동합니다.
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpPage())
                        );
                      },

                      textColor: Colors.black,
                    ),



                  ),

                  //Log IN button
                  Container(

                    child:RaisedButton(
                      padding: EdgeInsets.fromLTRB(108,5,108,5),
                      child: Text('Log IN', style: TextStyle(fontSize: 18)),
                      onPressed: () {

                        if (_loginKey.currentState.validate()) {
                          Navigator.pop(context);
                        }
                      },

                      /*
                    onPressed: () {
                    print('눌림!');

                },
                   */
                      textColor:Colors.white,
                      color:Colors.black,

                    ),



                  ),

                  //another login
                  Container(

                    child: Column(
                      children: <Widget> [
                        RaisedButton(
                          padding: EdgeInsets.fromLTRB(83,5,83,5),
                          child: Text('카카오로 로그인', style: TextStyle(fontSize: 15)),
                          onPressed: showMessage,
                          textColor:Colors.black,
                          color:Colors.yellow,

                        ),
                        RaisedButton(
                          padding: EdgeInsets.fromLTRB(83,5,83,5),
                          child: Text('네이버로 로그인', style: TextStyle(fontSize: 15)),
                          onPressed: showMessage,
                          textColor:Colors.white,
                          color:Colors.green,

                        ),
                        RaisedButton(
                          padding: EdgeInsets.fromLTRB(90,5,90,5),
                          child: Text('구글로 로그인', style: TextStyle(fontSize: 15)),
                          onPressed: showMessage,
                          textColor:Colors.black,
                          color:Colors.white,

                        ),
                        SizedBox(height: 50),
                      ],
                    ),
                  )




                ]
            )
        ),
      ),

    );





  }
  void showMessage() {
    print("clicked!");
  }


}
