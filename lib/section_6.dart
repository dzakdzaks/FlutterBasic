import 'package:flutter/material.dart';

class Section6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: GestureDetector(
        child: Hero(
            tag: 'imageHero',
            child: Image.network(
                'http://www.udacoding.com/wp-content/uploads/2019/05/Flutter-E-commerce.jpg')),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailHeroAnimation();
          }));
        },
      ),
    );
  }
}

class DetailHeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Hero(
            tag: 'imageHero',
            child: Image.network(
                'http://www.udacoding.com/wp-content/uploads/2019/05/Flutter-E-commerce.jpg')),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
