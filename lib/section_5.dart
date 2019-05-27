import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Section5 extends StatefulWidget {
  @override
  _Section5State createState() => _Section5State();
}

class _Section5State extends State<Section5> {

  //simple dialog
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

  //snackbar
  final GlobalKey<ScaffoldState> _key = new GlobalKey();

  void showSnackBar() {
    _key.currentState.showSnackBar(
        new SnackBar(content: new Text('This is Snackbar')));
  }

  //alert dialog
  void showAlertDialog() {
    showDialog(context: context,
        child: new AlertDialog(
          title: Text('Warning'),
          content: Text('Are you sure want to logout?'),
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.close), color: Colors.red, onPressed: () {
              Navigator.pop(context);
            }),
            new IconButton(
                icon: Icon(Icons.check), color: Colors.green, onPressed: () {
              Navigator.pop(context);
            }),
          ],
        ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Widget'),
      ),
      key: _key,
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            new MaterialButton(
              onPressed: () {
                showSimpleDialog();
              },
              child: Text('Simple Dialog'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                showSnackBar();
              },
              child: Text('Snackbar'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                showAlertDialog();
              },
              child: Text('Alert Dialog'),
              color: Colors.green,
              textColor: Colors.white,
            ),
            new MaterialButton(
              onPressed: () {
                Fluttertoast.showToast(msg: 'This is Toast',
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.green,
                textColor: Colors.white,
                );
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