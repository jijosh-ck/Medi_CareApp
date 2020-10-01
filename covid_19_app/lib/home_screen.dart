import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './covid_19.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Covid_19.themecolor,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: null),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: null)],
      ),
        body:Stack(
          children: [
            Container(
              decoration: BoxDecoration(image: DecorationImage(
                  image: AssetImage("assets/backgrounds/mc7.jpg"),
              fit: BoxFit.fill)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70.0,right: 70.0,top: 10.0,bottom: 10.0),
              child: Image.asset("assets/logos/logo.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250.0,left: 10.0,right: 10.0),
              child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,
              children: <Widget>[
                Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset("assets/logos/logo.png",
                          height: 100.0,
                          width: 100.0,),
                        ),
                        Center(
                          child: Text("Profile"),
                        )
                      ],
                    )
                ),
                Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset("assets/logos/logo.png",
                            height: 100.0,
                            width: 100.0,),
                        ),
                        Center(
                          child: Text("Alert"),
                        )
                      ],
                    )
                ),
                Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset("assets/logos/logo.png",
                            height: 100.0,
                            width: 100.0,),
                        ),
                        Center(
                          child: Text("Medicine"),
                        )
                      ],
                    )
                ),
                Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset("assets/logos/logo.png",
                            height: 100.0,
                            width: 100.0,),
                        ),
                        Center(
                          child: Text("logout"),
                        )
                      ],
                    )
                ),
              ],

            ),),



          ],
        ) ,
      ),
    );
  }
}
