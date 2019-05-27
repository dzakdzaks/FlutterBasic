import 'package:flutter/material.dart';
import 'page_ketiga.dart';

class Section1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless, Statefull, and Intent'),
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
                    MaterialPageRoute(builder: (context) => PageStateless()));
              },
              child: Text('Stateless Widget'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageStatefull()));
              },
              child: Text('Statefull Widget'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageIntent()));
              },
              child: Text('Intent'),
              color: Colors.green,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

//STATLESS WIDGET
class PageStateless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget'),
      ),
      body: new Container(
        color: Colors.blueAccent,
        child: new Container(
          color: Colors.lightGreen,
          margin: const EdgeInsets.all(50.0),
        ),
      ),
    );
  }
}
//STATLESS WIDGET

//STATEFULL WIDGET
class PageStatefull extends StatefulWidget {
  @override
  _PageStatefullState createState() => _PageStatefullState();
}

class _PageStatefullState extends State<PageStatefull> {
  String teks = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    teks = 'Klik tombol ini';
  }

  void methodChange() {
    setState(() {
      teks = 'Teks telah berubah';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull Widget'),
      ),
      body: new Center(
        child: new MaterialButton(
          color: Colors.green,
          textColor: Colors.white,
          onPressed: () {
            methodChange();
          },
          child: Text(teks),
        ),
      ),
    );
  }
}
//STATEFULL WIDGET

//INTENT
class PageIntent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intent'),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PagePertama()));
              },
              child: Text('Page Pertama'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageKedua()));
              },
              child: Text('Page Kedua'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageKetiga()));
              },
              child: Text('Page Ketiga'),
              color: Colors.green,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}

class PagePertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text('Page Pertama'),
      ),
    );
  }
}

class PageKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Text('Page Kedua'),
      ),
    );
  }
}
//INTENT
