import 'package:flutter/material.dart';
import 'package:insta_app/my_home_page.dart';
import 'package:insta_app/pages/home-page.dart';

import 'package:insta_app/pages/sign-up-screen.dart';
class  SignInScreen extends StatelessWidget {
  const  SignInScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: Container(
        width:double.infinity ,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png',
              width: 220,
              height:220,
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,

              ),
              margin: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color:Color(0xFFF1F1FB),width: 2.0),


                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color:Color(0xFFF1F1FB),width: 2.0),


                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color:Color(0xFFF1F1FB),width: 2.0),


                  ),
                  hintText: 'Email',
                  contentPadding: EdgeInsets.all(25.0),
                ) ,

              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.white,

              ),
              margin: EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color:Color(0xFFF1F1FB),width: 2.0),


                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color:Color(0xFFF1F1FB),width: 2.0),


                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide(
                        color:Color(0xFFF1F1FB),width: 2.0),


                  ),
                  hintText: 'Password',
                  contentPadding: EdgeInsets.all(25.0),
                  suffixIcon:
                  Container(
                    margin: EdgeInsets.only(right:20.0 ),
                    child: Icon(Icons.visibility_off,
                      color: Colors.black,
                    ),
                  ),
                ) ,

              ),
            ),

            Container(
              width:double.infinity ,
              height: 60,
              margin: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return MyHomePages();
                },
                ),
                );
              },
                child: Text('Sign In'),
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  backgroundColor: Color(0xFF1257FA),
                  elevation: 0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text('Don\'t hove an acount?'),
                TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return SignUpScreen();
                  },
                  ),
                  );
                },
                  child:Text(

                    'SignUp',
                    style:
                    TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ],)
        ,),
    );
  }
}