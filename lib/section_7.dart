import 'package:flutter/material.dart';

class Section7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Asset and URL'),
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
                    MaterialPageRoute(builder: (context) => ImageAsset()));
              },
              child: Text('Image Asset'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ImageURL()));
              },
              child: Text('Image URL'),
              color: Colors.green,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class ImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image Asset'),
        ),
        body: Column(
          children: <Widget>[
            Image.asset('image/img.jpg'),
            SizedBox(
              height: 10,
            ),
            Text('Image From Asset'),
          ],
        ));
  }
}

class ImageURL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Image URL'),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Text(
              'Image From URL',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.network(
                  'http://www.udacoding.com/wp-content/uploads/2019/05/Flutter-E-commerce.jpg',
                  height: 150,
                  width: 150,
                ),
                Image.network(
                  'http://www.udacoding.com/wp-content/uploads/2019/04/Web-hallo.png',
                  height: 150,
                  width: 150,
                ),
              ],
            ),
          ],
        ));
  }
}
