import 'package:flutter/material.dart';
import 'package:hack_for_good/menu/custom_drawer.dart';
import 'package:hack_for_good/produto/produto_list.dart';

class ProdutoCadastro extends StatelessWidget {
  List<DropdownMenuItem<int>> listDropMenu = [];
  int itemSelecionado = 1;

  ProdutoCadastro() {
    loadDropMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("CADASTRAR PRODUTO"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProdutoList()));
          }),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  labelText: "NOME DO PRODUTO",
                  labelStyle: TextStyle(color: Colors.blueAccent)),
              style: TextStyle(color: Colors.blueAccent),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "MENSAGEM",
                  labelStyle: TextStyle(color: Colors.blueAccent)),
              style: TextStyle(color: Colors.blueAccent),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "NOME DO ESTABELECIMENTO",
                  labelStyle: TextStyle(color: Colors.blueAccent)),
              style: TextStyle(color: Colors.blueAccent),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "BAIRRO",
                  labelStyle: TextStyle(color: Colors.blueAccent)),
              style: TextStyle(color: Colors.blueAccent),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "LAGRADOURO",
                  labelStyle: TextStyle(color: Colors.blueAccent)),
              style: TextStyle(color: Colors.blueAccent),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "NÚMERO",
                  labelStyle: TextStyle(color: Colors.blueAccent)),
              style: TextStyle(color: Colors.blueAccent),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "TELEFONE",
                  labelStyle: TextStyle(color: Colors.blueAccent)),
              style: TextStyle(color: Colors.blueAccent),
            ),
            DropdownButton(
              items: listDropMenu,
              value: itemSelecionado,
              onChanged: (value) {
                this.itemSelecionado = value;
              },
              hint: Text(
                "Estoque",
                style: TextStyle(color: Colors.blueAccent),
              ),
              style: TextStyle(color: Colors.blueAccent),
            ),
            Row(
              children: <Widget>[
                FlatButton(
                  color: Colors.blueAccent,
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "SALVAR IMAGEM",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    return 0;
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void loadDropMenu() {
    this.listDropMenu.clear();
    this.listDropMenu.add(DropdownMenuItem(
          child: Text("Com estoque"),
          value: 0,
        ));
    this.listDropMenu.add(DropdownMenuItem(
          child: Text("Sem estoque"),
          value: 1,
        ));
  }
}
