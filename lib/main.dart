import'package:flutter/material.dart';

import 'home.dart';

void main(){

runApp(Todo());


}   


class Todo extends StatefulWidget {
  

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home:Scaffold(
  body:
   Container(decoration: BoxDecoration(image:DecorationImage(image: AssetImage("assets/logo.png"))),child: Home())


    ));}}


