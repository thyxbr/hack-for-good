import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {

  String text;

  Function function;

  DrawerTile(this.text, this.function);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          function();
        },
        child: Container(
          height: 60,
          alignment: Alignment.centerLeft,
          child: Text(text, style: TextStyle(fontSize: 16, color: Colors.blueAccent),),
        ),
      ),
    );
  }
}
