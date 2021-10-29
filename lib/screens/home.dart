import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [Icon(Icons.card_travel), Icon(Icons.music_note)],
        title: Text('MyAppBar Example'),
      ),
      body: Center(
        // child: Image.network(
        //   'https://wallpapercave.com/wp/wp2798733.jpg',
        //   fit: BoxFit.cover,
        // ),
        child: Image.asset('images/deadpool.png'),
        // child: Image.network(
        //     'https://static.wikia.nocookie.net/marvelmovies/images/6/66/Deadpool_promo.png'),
        // child: Text(
        //   'Hello Flutter',
        //   style: TextStyle(fontSize: 40),
        // ),
      ),
    );
  }
}
