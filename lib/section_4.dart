import 'package:flutter/material.dart';

class Section4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input, Button, and Slider'),
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
                    MaterialPageRoute(builder: (context) => PageInput()));
              },
              child: Text('Input'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageButton()));
              },
              child: Text('Button'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageSliderWidget()));
              },
              child: Text('Slider'),
              color: Colors.green,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

//PAGE INPUT
class PageInput extends StatefulWidget {
  @override
  _PageInputState createState() => _PageInputState();
}

class _PageInputState extends State<PageInput> {
  String txt = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Page Input'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              onChanged: (String text) {
                setState(() {
                  txt = text;
                });
              },
              decoration: new InputDecoration(
                  hintText: 'Input Username', labelText: 'Username'),
            ),
            SizedBox(
              height: 10,
            ),
            new Text(txt),
          ],
        ),
      ),
    );
  }
}

//PAGE INPUT

//BUTTON
class PageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: () {},
              child: Text('Button Raised'),
            ),
            new FlatButton(
              onPressed: () {},
              child: Text('Button Flat'),
            ),
            new MaterialButton(
              onPressed: () {},
              child: Text('Button Material'),
              color: Colors.green,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

//BUTTON

//SLIDER
class PageSliderWidget extends StatefulWidget {
  @override
  _PageSliderWidgetState createState() => _PageSliderWidgetState();
}

class _PageSliderWidgetState extends State<PageSliderWidget> {
  double drag = 1.0;

  void methodDragVolume(value) {
    setState(() {
      drag = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Drag Slider'),
      ),
      body: new Center(
          child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Slider(
              value: drag,
              min: 1.0,
              max: 100.0,
              onChanged: (double val) {
                methodDragVolume(val);
              }),
          new Text('Value : $drag'),
        ],
      )),
    );
  }
}

//SLIDER
