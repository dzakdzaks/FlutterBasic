import 'package:flutter/material.dart';

class Section2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layouting in Flutter'),
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageWidgetContainer()));
              },
              child: Text('Container'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageRowAndColumn()));
              },
              child: Text('Row And Column'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageList()));
              },
              child: Text('List'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageListArray()));
              },
              child: Text('List Array'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageGridView()));
              },
              child: Text('Grid View'),
              color: Colors.green,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

//CONTAINER
class PageWidgetContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: new Center(
        child: new Container(
          color: Colors.black,
          child: new Text('My Container'),
          width: 300.0,
          height: 500.0,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          foregroundDecoration: new BoxDecoration(color: Colors.lightGreen),
        ),
      ),
    );
  }
}
//CONTAINER

//ROW AND COLUMN
class PageRowAndColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row and Column'),
      ),
      body: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text('Ini'),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Ini'),
              new Text('adalah'),
              new Text('Column'),
            ],
          ),
          new Text('Row')
        ],
      ),
    );
  }
}
//ROW AND COLUMN

//LIST Widget
class PageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: new ListView(
        children: <Widget>[
          new ListTile(
            title: Text('Rendang'),
            trailing: Icon(Icons.fastfood),
          ),
          new ListTile(
            title: Text('Minuman'),
            trailing: Icon(Icons.local_drink),
          ),
          new ListTile(
            title: Text('Phone'),
            trailing: Icon(Icons.phone),
          ),
          new ListTile(
            title: Text('Alarm'),
            trailing: Icon(Icons.alarm),
          ),
          new ListTile(
            title: Text('Camera'),
            trailing: Icon(Icons.camera),
          ),
        ],
      ),
    );
  }
}
//LIST Widget

//LIST ARRAY
class PageListArray extends StatefulWidget {
  @override
  _PageListArrayState createState() => _PageListArrayState();
}

class _PageListArrayState extends State<PageListArray> {
  List<int> item = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 0; i < 25; i++) {
      item.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View with Array'),
      ),
      body: new ListView.builder(
          itemCount: item.length,
          itemBuilder: (BuildContext context, int index) {
            return new ListTile(
              title: new Text('Item Nomor: $index'),
              trailing: new Icon(Icons.print),
            );
          }),
    );
  }
}
//LIST ARRAY

//GRIDVIEW
class PageGridView extends StatefulWidget {
  @override
  _PageGridViewState createState() => _PageGridViewState();
}

class _PageGridViewState extends State<PageGridView> {
  List<int> itemGrid = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    for (int i = 0; i < 30; i++) {
//      itemGrid.add(i);
//    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        titleSpacing: 80.0,
        elevation: 35.0,
//        toolbarOpacity: 0.5,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          new IconButton(icon: Icon(Icons.data_usage), onPressed: () {}),
        ],
      ),
      body: new GridView.builder(
          gridDelegate:
              new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              color: Colors.green,
              child: new Padding(padding: const EdgeInsets.all(25)),
            );
          }),
    );
  }
}
//GRIDVIEW
