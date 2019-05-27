import 'package:flutter/material.dart';
import 'section_1.dart';
import 'section_2.dart';
import 'section_3.dart';
import 'section_4.dart';
import 'section_5.dart';
import 'section_6.dart';
import 'section_7.dart';
import 'movie_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Section1()));
              },
              child: Text('Section 1'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Section2()));
              },
              child: Text('Section 2'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Section3()));
              },
              child: Text('Section 3'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Section4()));
              },
              child: Text('Section 4'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Section5()));
              },
              child: Text('Section 5'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Section6()));
              },
              child: Text('Section 6'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Section7()));
              },
              child: Text('Section 7'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new SizedBox(
              height: 25,
            ),
            new SizedBox(
              width: double.infinity,
              child: new MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MovieApp()));
                },
                child: Text('Movie App'),
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
