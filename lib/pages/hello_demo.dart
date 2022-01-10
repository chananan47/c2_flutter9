import 'package:flutter/material.dart';

class HelloDemo extends StatelessWidget{
  const HelloDemo({Key? key}) :super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle:true,
        title:Text("Flutter App Development"),
      ), //AppBar
      body:Center(
        child: Text("Hello Flutter"),
      ),
    );
  }
}