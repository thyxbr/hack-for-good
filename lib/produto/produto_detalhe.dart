import 'package:flutter/material.dart';
import 'package:hack_for_good/menu/custom_drawer.dart';
import 'package:hack_for_good/models/Produto.dart';
import 'package:hack_for_good/produto/produto_list.dart';

class ProdutoDetalhe extends StatelessWidget {
  Produto produto;

  ProdutoDetalhe(Produto produto) {
    this.produto = produto;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("DETALHES DO PRODUTO"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
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
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                produto.nomeProduto,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
            Image.asset(
              produto.image,
              key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
              height: 100.0,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                "MENSAGEM",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                produto.mensagem,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                "INFORMAÇÕES DO ESTABELECIMENTO",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "NOME: " + produto.nomeEstabelecimento,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueAccent),
                  ),
                  Text(
                    "BAIRRO: " + produto.bairro,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueAccent),
                  ),
                  Text(
                    "LAGRADOURO: " + produto.lagradouro,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueAccent),
                  ),
                  Text(
                    "NÚMERO: " + produto.numero,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueAccent),
                  ),
                  Text(
                    "TELEFONE: " + produto.telefone,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
