import 'package:flutter/material.dart';

// import 'hello_demo.dart';
import 'appbar_demo.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) :super(key: key);

  @override
Widget build(BuildContext context){
  return MaterialApp(
    theme:ThemeData(primarySwatch: Colors.pink),
    debugShowCheckedModeBanner: false,
    title: 'Flutter App Development',
    home: AppbarDemo(),
  );
}
}

