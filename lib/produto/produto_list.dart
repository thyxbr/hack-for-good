import 'package:flutter/material.dart';
import 'package:hack_for_good/menu/custom_drawer.dart';

class ProdutoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("PRODUTOS"),
        centerTitle: true,
      ),
    );
  }
}
