import 'package:flutter/material.dart';

var courseshow = Container(
    height: 250,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Row(children: <Widget>[
          Image.asset("assets/images/pic.jpg",width: 200,),
          Image.asset("assets/images/pic.jpg",width: 200,),
          Image.asset("assets/images/pic.jpg",width: 200,),
        ],)
      ],
    ));
var courselist  = Container(
  height: 250,
  child: ListView(
    children: <Widget>[
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
        Image.asset("assets/images/pic.jpg",height: 150,width: 150,),
        Text("Course1"),
        Icon(Icons.favorite)
      ],),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
        Image.asset("assets/images/pic.jpg",height: 150,width: 150,),
        Text("Course2"),
        Icon(Icons.favorite)
      ],),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
        Image.asset("assets/images/pic.jpg",height: 150,width: 150,),
        Text("Course3"),
        Icon(Icons.favorite)
      ],),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
        Image.asset("assets/images/pic.jpg",height: 150,width: 150,),
        Text("Course4"),
        Icon(Icons.favorite)
      ],),
      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: <Widget>[
        Image.asset("assets/images/pic.jpg",height: 150,width: 150,),
        Text("Course5"),
        Icon(Icons.favorite)
      ],),
    ],
  ),
);
class Course extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return  Scaffold(
        body: Container(
          child:Column(children: <Widget>[
            Row(children: <Widget>[Text("Workout COURSE1"),],),
            courseshow,
            courselist,
          ],),
        ),
      );
  }
}