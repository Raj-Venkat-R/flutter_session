import 'package:demo/DashBoard.dart';
// import 'package:demo/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  //here runApp is like calling an funtion but it also gives the ouput.
  runApp(MyWidget());
}

//state full and state less widget - dynamic means state full and static means state less widget are used.
//shortcut to create state full - stful and to create state less - stless.
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    //MaterialApp is main parent node - an app will be in tree structure were the parent node is materilapp.
    return MaterialApp(
      //here home is an attribute as the name specify the opens with this screen.
      home: Dashboard(),
      
      );
  }
}
  


    
