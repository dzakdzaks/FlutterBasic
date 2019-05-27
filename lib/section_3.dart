import 'package:flutter/material.dart';
//TAB BAR
class Section3 extends StatefulWidget {
  @override
  _Section3State createState() => _Section3State();
}

class _Section3State extends State<Section3>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tab Bar Apps'),
//        backgroundColor: Colors.green,
        bottom: new TabBar(
          controller: tabController,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
            ),
            new Tab(
              icon: new Icon(Icons.dashboard),
            ),
            new Tab(
              icon: new Icon(Icons.data_usage),
            ),
            new Tab(
              icon: new Icon(Icons.close),
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: tabController,
        children: <Widget>[
          new Center(
            child: new Text('Welcom To Home'),
          ),
          new Center(
            child: new Text('Welcom To Dashboard'),
          ),
          new Center(
            child: new Text('Welcom To Data Usage'),
          ),
          new Center(
            child: new Text('Welcom To Close'),
          ),
        ],
      ),
    );
  }
}
//TAB BAR