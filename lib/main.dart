import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(SerhatApp());
}

class  SerhatApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Scaffold(
appBar: AppBar(
  backgroundColor: Colors.white,
  centerTitle: true,
  title: Text("WHAT SHOULD I EAT TODAY ?",style: TextStyle(color: Colors.black),),),
  body:FoodPage()
,
),

    );

  }
}

class FoodPage extends StatefulWidget {
  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int soupNo=1;

  int foodNo=1;

  int delightfulNo=1;

  List<String> soupNames=['mercimek','iskembe','asure'];
List<String> foodNames=['kuru fasulye','spagetti','pilav','borek'];
List<String> delightFullName=['baklava','pudink'];
  void refreshFood(){
    setState((){
      soupNo=Random().nextInt(3)+1;
      delightfulNo=Random().nextInt(2)+1;
      foodNo=Random().nextInt(4)+1;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(flex:1,child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                highlightColor: Colors.grey,//tiklandigi zaman renk
                onPressed:refreshFood,


            child: Image.asset('assets/corba_$soupNo.png')),
          )), //resim buyuklugunu ayarliyo
          Text(soupNames[soupNo-1]),
          Container(width:200,child:Divider(height: 5,color: Colors.black,) ,),
         Expanded(child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: FlatButton(
               highlightColor: Colors.grey,
               onPressed:refreshFood,
               // onPressed:(){
               // setState((){
               //
               //   soupNo=Random().nextInt(3)+1;
               //   delightfulNo=Random().nextInt(2)+1;
               //   foodNo=Random().nextInt(4)+1;
               // });


  child: Image.asset('assets/yemek_$foodNo.png')),
         )),
          Text(foodNames[foodNo-1]),
          Container(width: 300,child: Divider(height: 5,color: Colors.black,),),
          Expanded(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlatButton(
                highlightColor: Colors.grey,
                onPressed: refreshFood,

child: Image.asset('assets/tatli_$delightfulNo.png')),
          )),Text(delightFullName[delightfulNo-1]),
      Container(width: 300,child: Divider(height: 5,color: Colors.black,),),
        ],
      ),
    );
  }
}





