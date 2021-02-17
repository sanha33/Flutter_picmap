import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_gifs/loading_gifs.dart';
import 'login_page.dart';

class memberEdit extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => new _State();
}

// ignore: must_be_immutable
class _State extends State<memberEdit> {
  // This widget is the root of your application.
  TextEditingController emailController = TextEditingController();
  TextEditingController nicknameController = TextEditingController();
  final _editKey = GlobalKey<FormState>();

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
      key: _editKey,


      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.center,

                  children:<Widget>[
                    SizedBox(height: 120),
                    Image.asset(
                      'images/profile2.jpg',
                      width: 295/2,
                      height: 250/2,

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
                child:Row(
                  children:<Widget>[

                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                    Expanded(

                      flex: 8,

                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:<Widget>[
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
                            controller: emailController,

                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              border: OutlineInputBorder(),
                              labelText: 'Email',

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
                              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                              border: OutlineInputBorder(),
                              labelText: 'Nickname',

                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),


                    ),
                    Expanded(
                      flex:1,
                      child:Container(),
                    ),
                  ],

                ),

              ),



              Container(

                child:RaisedButton(
                  padding: EdgeInsets.fromLTRB(100,5,100,5),
                  child: Text('회원정보 수정', style: TextStyle(fontSize: 18)),
                  onPressed: () {


                    if (_editKey.currentState.validate()) {
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

            ],
          ),
        ),
      ),
    );
  }
}