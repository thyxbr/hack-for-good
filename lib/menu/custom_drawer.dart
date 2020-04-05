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
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "LOGO DO APP",
                    style: TextStyle(fontSize: 30, color: Colors.blueAccent, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                DrawerTile("PRODUTOS", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProdutoList()));
                }),
                DrawerTile("LOCAIS DE ATENDIMENTO", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProdutoList()));
                }),
                DrawerTile("ALERTAS", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProdutoList()));
                }),
                DrawerTile("CONFIGURAÇÕES", () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProdutoList()));
                }),
              ],
            )));
  }
}
