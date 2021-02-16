import 'package:flutter/material.dart';
import 'memberInformationEdit_page.dart';

class Member extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => new _State();
}



class _State extends State<Member> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    Widget topSection = Container(

      padding: const EdgeInsets.all(32),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Icon(
                Icons.clear,
                color: Colors.black
            )
          ]
      ),
    );



    Widget profileSection = Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/profile1.jpg',
                width: 343/3.5,
                height: 343/3.5,
              ),
              SizedBox(height: 10),
              Text(
                  '이산하'
              ),
              SizedBox(height: 10),
              Text(
                  '21801047@handong.edu'
              ),
              SizedBox(height: 10),
            ]

        )

    );


    Widget buttonSection = Container(
      padding: const EdgeInsets.all(18),
      color: Colors.grey[200],
      child :Column(


          children:[
            Row(

                children:[
                  SizedBox(width: 28),
                  Column(
                    children:[
                      Text(
                        '23',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                      ),
                      Text(
                          '내 게시물 수'
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  //     VerticalDivider(color:Colors.black, thickness:2.0),
                  SizedBox(width: 30),
                  Column(
                    children:[
                      Container(
                          width:118/3.5,
                          height:118/3.5,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image:new ExactAssetImage('images/pink2.jpg'),
                              )
                          )
                      )
                      ,

                      Text(
                          '내 믿음 온도'
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  //     VerticalDivider(color:Colors.black, thickness:2.0),
                  SizedBox(width: 30),
                  Column(
                    children:[
                      Text(
                        '8',
                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                      ),
                      Text(
                          '추천 수'
                      ),
                    ],
                  )
                ]
            ),


          ]

      ),
    );

    Widget bottomSection = Container (
      //color:Colors.grey[200],

        child :Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(left:20),
                child:FlatButton(

                  onPressed: (){

                    //forgot password screen
                  }, textColor:Colors.black,
                  child: Text('내 게시물 관리',style:TextStyle(fontWeight: FontWeight.bold)),),
              ),

              SizedBox(height: 5),
              Divider(color:Colors.grey[200], thickness:2.5),
              SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left:20),
                child:FlatButton(onPressed: () {
                  // 눌렀을 때 두 번째 route로 이동합니다.
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => memberEdit())
                  );
                }, textColor:Colors.black,
                  child: Text('회원 정보 수정',style:TextStyle(fontWeight: FontWeight.bold)),),
              ),

              SizedBox(height: 5),
              Divider(color:Colors.grey[200], thickness:15.0),
              SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left:20),
                child:FlatButton(onPressed: (){
                  //forgot password screen
                }, textColor:Colors.black,
                  child: Text('공지 사항',style:TextStyle(fontWeight: FontWeight.bold)),),
              ),

              SizedBox(height: 5),
              Divider(color:Colors.grey[200], thickness:2.5),
              SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.only(left:20),
                child:FlatButton(onPressed: (){
                  //forgot password screen
                }, textColor:Colors.black,
                  child: Text('고객 센터',style:TextStyle(fontWeight: FontWeight.bold)),),
              ),

            ]
        )

    );


    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [

            topSection,
            profileSection,
            buttonSection,
            bottomSection
          ],
        ),
      ),
    );
  }




}
