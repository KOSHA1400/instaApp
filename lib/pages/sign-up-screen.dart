import 'package:flutter/material.dart';
import 'package:insta_app/pages/sign-in-screen.dart';
class  SignUpScreen extends StatelessWidget {
  const  SignUpScreen({ Key? key }) : super(key: key);

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
                  hintText: 'Confirm Password',
                  suffixIcon:
                  Container(
                    margin: EdgeInsets.only(right:20.0 ),
                    child: Icon(Icons.visibility_off,
                      color: Colors.black,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(25.0),
                ) ,

              ),
            ),
            Container(
              width:double.infinity ,
              height: 60,
              margin: EdgeInsets.all(10),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return SignInScreen();
                },
                ),
                );
              },
                child: Text('Sign Up'),
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
                Text('Already hove an acount?'),
                TextButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context){
                    return SignInScreen();
                  },
                  ),
                  );
                },
                  child:Text(

                    'SignIn',
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