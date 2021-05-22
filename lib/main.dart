import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          //Creates a material design tab bar.
          length: 4, //The total number of tabs that we need.
          child: Scaffold(
            //Creates a visual scaffold for material design widgets.
            backgroundColor: Colors
                .indigo, //The color of the [Material] widget that underlies the entire Scaffold.
            appBar: AppBar(
              //Creates a material design app bar.
              title: Text("Tab Bar Practice"),
              bottom: TabBar(
                //Creates a material design tab bar.
                tabs: <Widget>[
                  //Typically a list of two or more [Tab] widgets.
                  Tab(
                    //Creates a page view with one child per tab.
                    icon: Icon(Icons.comment),
                    text: "Comments",
                  ),
                  Tab(
                    //Creates a page view with one child per tab.
                    child: Image(
                      image: AssetImage("images/twitterlogo.png"),
                    ),
                  ),
                  Tab(
                    //Creates a page view with one child per tab.
                    icon: Icon(Icons.recommend),
                  ),
                  Tab(
                    //Creates a page view with one child per tab.
                    text: "News",
                  )
                ],
              ),
            ),
            body: TabBarView(
              //Creates a page view with one child per tab.
              children: <Widget>[
                Center(
                  child: Text("Tab 1"), //text for tab 1
                ),
                Center(
                  child: Text("Tab 2"), //text for tab 2
                ),
                Center(
                  child: Text("Tab 3"), //text for tab 3
                ),
                Center(
                  child: Text("Tab 4"), //text for tab 4
                ),
              ],
            ),
          )),
    );
  }
}
