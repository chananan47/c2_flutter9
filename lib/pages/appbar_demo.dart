import 'package:flutter/material.dart';

class AppbarDemo extends StatefulWidget {
  const AppbarDemo({Key? key}) :super (key: key);

  @override
  State<AppbarDemo> createState() => _AppbarDemo();
}

class _AppbarDemo extends State<AppbarDemo>{
  int count = 0;
  String message = "Hi";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text ('Flutter AppBar'),
        // toolbarHeight: 100,
        // toolbarOpacity: 0.8,
        // toolbarTextStyle: TextStyle(fontSize: 50),
        // backgroundColor: Colors.pink,
        elevation: 5.0,
        shadowColor: Colors.pink,
        actions: [
          IconButton(
              onPressed: (){
                setState((){
                  message = "Hi New Year";
                  count = count + 1;
              });
          },
              icon:Icon(Icons.add_alert)),
                IconButton(
                  onPressed: () {
                    setState (() {
                      message = "Thank you";
                      count = count - 1;
                  });
                },
              icon: Icon(Icons.delete_forever_sharp))
         IconButton(
             onPressed:(){
              setState(() {
                message = "Happy New Year";
                count = 0;
              });
    },
        Icon(Icons.power_settings_new))
        ],
      ),  //AppBar
      body: Center(
        child: Text(
          "$count \n $message",
          style: TextStyle(fontSize: 90.0, fontWeight.FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        setState(
              () => {count = count + 1,print("Count:$count")},
        );
        },
        child: Icon(Icons.add),
        tooltip: 'เพิ่มค่า',
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    ); //Scaffold
  }
}