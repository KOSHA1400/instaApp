import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(

      child: new ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 20,
          itemBuilder: (context, index) {
            return new Stack(
              children: <Widget>[
                new Container(
                  margin: EdgeInsets.only(bottom: 4.0,left: 290.0),
                  width: 70.0,
                  height: 70.0,
                  decoration: new BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://imso.ir/wp-content/uploads/2021/07/avatar-default-icon.png'),
                    ),
                  ),
                )
              ],
            );
          }),
      color: Colors.white,
    );
  }
}
