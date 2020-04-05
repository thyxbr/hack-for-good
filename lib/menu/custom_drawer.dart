import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack_for_good/menu/drawer_tile.dart';
import 'package:hack_for_good/produto/produto_list.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            padding: EdgeInsets.all(10),
            child: ListView(
              padding: EdgeInsets.only(left: 32, top: 16),
              children: <Widget>[
                Image.asset(
                  "images/aquario.jpg",
                  height: 100,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "MENU",
                    style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                  ),
                ),
                Divider(),
                DrawerTile("PRODUTOS", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProdutoList()));
                }),
              ],
            )));
  }
}
