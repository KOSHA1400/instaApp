import 'package:flutter/material.dart';
import 'package:insta_app/pages/favorite.dart';
import 'package:insta_app/pages/home-page.dart';
import 'package:insta_app/pages/sign-in-screen.dart';
import 'package:insta_app/pages/sign-up-screen.dart';
import 'package:insta_app/pages/profile-page.dart';
import 'package:insta_app/pages/cart-page.dart';

class MyHomePages extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>MyHomePagesState();

  }




class MyHomePagesState  extends State<MyHomePages>{

  String currentPageName='home';
  final Map<String,Widget>children=<String,Widget>{
    'home':new HomePage(),
    'search':new CartPage(),
    'login':new SignInScreen(),
    'favorite':new FavoritePage(),
    'profile':new ProfilePage(),

  };



  final appBar=new AppBar(
    centerTitle:true ,
    actions:<Widget> [
      new Padding(padding:EdgeInsets.only(right:12.0 ),child:new Icon(Icons.send) ,)
    ],
    backgroundColor: new Color(0xfff8997faf8),
    leading: new Icon(Icons.camera_alt),
    elevation:1.0 ,
    title: SizedBox(
      height:35.0 ,
      child:new Image.asset("assets/images/insta_logo.png")  ,
    ),
  );

  changePage(String namePage){
    setState(() {
      currentPageName=namePage;
    });

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:appBar ,
      body:this.children[currentPageName],
      bottomNavigationBar:new Container(
        color: Colors.white,
        height:50.0 ,
        alignment: Alignment.center,
        child: new BottomAppBar(
          child:  new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[

              new IconButton(onPressed: (){changePage('login');}, icon:new Icon(Icons.login_rounded)),
              new IconButton(onPressed: (){changePage('favorite');}, icon:new Icon(Icons.favorite)),
              new IconButton(onPressed: (){changePage('home');}, icon:new Icon(Icons.home)),
              new IconButton(onPressed: (){changePage('profile');}, icon:new Icon(Icons.account_box)),
              new IconButton(onPressed: (){changePage('search');}, icon:new Icon(Icons.shopping_cart)),

            ],
          ),
        ),
      )

      ,
    );
  }

}