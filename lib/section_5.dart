import 'package:flutter/material.dart';


class Section5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Widget'),
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
                    MaterialPageRoute(builder: (context) => PageAlertDialog()));
              },
              child: Text('Simple Dialog'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => PageStatefull()));
              },
              child: Text('Snackbar'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => PageIntent()));
              },
              child: Text('Alert Dialog'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
//                Navigator.push(context,
//                    MaterialPageRoute(builder: (context) => PageIntent()));
              },
              child: Text('Toast'),
              color: Colors.green,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class PageAlertDialog extends StatefulWidget {
  @override
  _PageAlertDialogState createState() => _PageAlertDialogState();
}

class _PageAlertDialogState extends State<PageAlertDialog> {
  SimpleDialog simpleDialog;

  void showSimpleDialog() {
    simpleDialog = new SimpleDialog(
      title: new Text('Warning'),
      children: <Widget>[
        new SimpleDialogOption(
          child: Text('Jakarta'),
          onPressed: () {
            print('Jakarta');
          },
        ),
        new SimpleDialogOption(
          child: Text('Padang'),
          onPressed: () {
            print('Padang');
          },
        ),
        new SimpleDialogOption(
          child: Text('Close'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
    showDialog(context: context, child: simpleDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Simple Dialog'),
//        backgroundColor: Colors.green,
      ),
      body: new Center(
        child: new RaisedButton(onPressed: (){
          showSimpleDialog();
        }, child: new Text('Show Alert Dialog'),),
      ),
    );
  }
}
//ALERTDIALOG
