import 'package:flutter/material.dart';
class CategoriesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return   new Container(
      color: Colors.white,
        width:double.infinity ,
        child: Column(

          mainAxisAlignment:MainAxisAlignment.center,
       children: [

        Image.asset('assets/images/faregh.jpg',
          width: 220,
          height:220,),
      Image.asset('assets/images/insta_logo.png'),
       ],
    ),

    );


  }
}