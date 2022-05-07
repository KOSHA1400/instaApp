import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta_app/pages/categories-page.dart';
import 'package:insta_app/pages/profile-page.dart';

class ListCategories extends StatelessWidget {
  final topText = new Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Text(
        "Categories",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      new Row(
        children: <Widget>[
          new Text("Watch all", style: TextStyle(fontWeight: FontWeight.bold)),
          new Icon(Icons.play_arrow),
        ],
      ),
    ],
  );
  final stories = new Expanded(
    child: new Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: new ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return new Stack(children: <Widget>[
              new IconButton(
                icon: Image.asset('assets/images/faregh.jpg'),
                iconSize: 50,
                onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context){
            return CategoriesPage();
            },
            ),
            );
            },

              )
            ]);
          }),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        children: <Widget>[
          topText,
          stories,
        ],
      ),
    );
  }
}
