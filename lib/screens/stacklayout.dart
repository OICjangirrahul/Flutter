import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {
  const StackLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const URL =
        'https://m.media-amazon.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_FMjpg_UX1000_.jpg';
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Card(
            shadowColor: Colors.red,
            elevation: 7,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  color: Colors.amber,
                ),
                Image.network(URL),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Amit@yahoo.com'),
                  subtitle: Text('amit srivastava'),
                  trailing: Icon(Icons.phone),
                ),
                Positioned(
                  top: 100,
                  left: 100,
                  child: Text(
                    'Super Hero',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                ),
                Positioned(
                  bottom: 150,
                  right: 100,
                  child: Text(
                    'Robo',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
