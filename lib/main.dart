import 'package:flutter/material.dart';
import 'package:insta_app/my_home_page.dart';
import 'package:insta_app/pages/sign-up-screen.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  new MaterialApp(
      debugShowCheckedModeBanner:false ,
      title:'اینستاگرام',
      theme: new ThemeData(
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme:TextTheme(subtitle1:TextStyle(color:Colors.black))
      ),
      home:SignUpScreen()
    );

  }

}
