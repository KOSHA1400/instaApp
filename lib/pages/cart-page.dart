

import 'package:flutter/material.dart';
import 'package:insta_app/list-categories.dart';
class CartPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    var deviceSize=MediaQuery.of(context).size;
    return  new ListView.builder(
        itemCount:5,
        itemBuilder:(context,index){
          return index==0
              ? new SizedBox(
            child: new ListCategories(),
            height: deviceSize.height * 0.30,
          )
              :new Container(

          );

        }
    );
  }
}
