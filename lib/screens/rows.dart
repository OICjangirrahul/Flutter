import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({Key? key}) : super(key: key);
  Widget _createText(String label, double size) {
    return Text(
      label,
      style: TextStyle(fontSize: size),
    );
  }

  Widget _createContainer(Color myColor, double height) {
    return Container(
      color: myColor,
      width: 100,
      height: height,
    );
  }

  Widget _createRow() {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.baseline,
      // textBaseline: TextBaseline.ideographic,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //textDirection: TextDirection.rtl,
      verticalDirection: VerticalDirection.up,
      children: [
        _createText('Hi', 12),
        _createText('Flutter', 40),
        _createText('Brain Mentors', 28)
        // _createContainer(Colors.red, 100),
        // _createContainer(Colors.yellow, 200),
        // _createContainer(Colors.blue, 300)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _createRow(),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisSize: MainAxisSize.max,
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [_createRow(), _createRow(), _createRow()],
        // ),
      ),
    );
  }
}
