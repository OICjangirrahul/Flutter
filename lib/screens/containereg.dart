import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      'https://static.wikia.nocookie.net/marvelmovies/images/6/66/Deadpool_promo.png')),
              gradient: SweepGradient(
                  //RadialGradient(
                  //LinearGradient(
                  colors: [
                    Colors.yellowAccent,
                    Colors.black,
                    Colors.deepOrange
                  ], stops: [
                0.0,
                0.5,
                1.0
              ]
                  //begin: Alignment.topLeft, end: Alignment.bottomRight
                  ),
              boxShadow: [
                BoxShadow(color: Colors.red, blurRadius: 40),
                BoxShadow(color: Colors.blueAccent, blurRadius: 30)
              ],
              shape: BoxShape.circle,
              // borderRadius: BorderRadius.circular(50),
              border: Border.all(
                  width: 4, color: Colors.blue, style: BorderStyle.solid),
              color: Colors.orangeAccent),
          margin: EdgeInsets.only(left: 50, top: 200),
          padding: EdgeInsets.all(10),
          width: deviceSize.width * 0.70,
          height: deviceSize.height * 0.70,
          //color: Colors.orangeAccent,
          // child: Text(
          //   'Hello Flutter',
          //   style: TextStyle(fontSize: 40),
          // ),
        ),
      ),
    );
  }
}
