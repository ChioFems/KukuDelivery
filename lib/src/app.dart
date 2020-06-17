import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

 // This is the main class of the application
 // which calls the MainScreen
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Chicken Delivery App",
      theme: ThemeData(
        primaryColor: Colors.teal
      ),
      home: MainScreen(),
    );
  }
}