import 'package:flutter/material.dart';
import 'package:hack_for_good/menu/custom_drawer.dart';
import 'package:hack_for_good/models/Produto.dart';
import 'package:hack_for_good/produto/produto_cadastro.dart';
import 'package:hack_for_good/produto/produto_detalhe.dart';

class ProdutoList extends StatelessWidget {
  List<Produto> produtos;
  List<DropdownMenuItem<int>> listDropMenu = [];
  int itemSelecionado = 1;

  ProdutoList() {
    this.produtos = new List();
    buscaProdutos();
    loadDropMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text("PRODUTOS"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProdutoCadastro()));
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Expanded(
                        flex: 4,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Procurar",
                                labelStyle:
                                    TextStyle(color: Colors.blueAccent)),
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        )),
                  ),
                  Container(
                      child: Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(5, 25, 5, 0),
                            child: DropdownButton(
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
                          ))),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: itemBuilder,
                itemCount: this.produtos.length,
                padding: EdgeInsets.only(top: 10.0),
              ),
            )
          ],
        ));
  }

  Future<void> buscaProdutos() {
    this.produtos.clear();

    Produto produto = new Produto();
    produto.idProduto = 1;
    produto.nomeProduto = "Alcool em Gel";
    produto.mensagem = "Estamos sem Alcool em Gel até semana que vem";
    produto.nomeEstabelecimento = "Fármacia Viva Bem";
    produto.bairro = "Centro";
    produto.lagradouro = "Rua jardim das flores";
    produto.estoque = false;
    produto.numero = "404";
    produto.telefone = "(99) 99999-9999";
    produto.image = "images/alcoolgel.png";
    this.produtos.add(produto);

    produto = new Produto();
    produto.idProduto = 2;
    produto.nomeProduto = "Papel higienico";
    produto.mensagem = "Temos 10 unidades de papel higienico em nosso estoque";
    produto.nomeEstabelecimento = "Mercado Boa Compra";
    produto.bairro = "Centro";
    produto.lagradouro = "Rua presidente Kennedy";
    produto.estoque = true;
    produto.numero = "201";
    produto.telefone = "(99) 99999-9999";
    produto.image = "images/papelhigienico.png";
    this.produtos.add(produto);

    produto = new Produto();
    produto.idProduto = 3;
    produto.nomeProduto = "Cotonete";
    produto.mensagem = "Não temos mais estoques de cotonete";
    produto.nomeEstabelecimento = "Mercado Boa Compra";
    produto.bairro = "Centro";
    produto.lagradouro = "Rua presidente Kennedy";
    produto.estoque = false;
    produto.numero = "501";
    produto.telefone = "(99) 99999-9999";
    produto.image = "images/cotonete.png";
    this.produtos.add(produto);

    produto = new Produto();
    produto.idProduto = 4;
    produto.nomeProduto = "Pão";
    produto.mensagem = "Pão quentinho somente amanhã";
    produto.nomeEstabelecimento = "Panificadora Central";
    produto.bairro = "Centro";
    produto.lagradouro = "Rua alvorada";
    produto.estoque = false;
    produto.numero = "204";
    produto.telefone = "(99) 99999-9999";
    produto.image = "images/pao.png";
    this.produtos.add(produto);
  }

  Widget itemBuilder(BuildContext context, int index) {
    Produto produto = this.produtos.elementAt(index);
    return InkWell(
      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProdutoDetalhe(produto)));
      },
      child: Container(
          margin: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 10.0),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: Image.asset(
                  produto.image,
                  key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
                  height: 75.0,
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                      child: Text("Postado por Felipe Zanella"),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                      width: 300,
                      child: Text(produto.mensagem, textAlign: TextAlign.left,),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, .0, .0, 10.0),
                      child: Text("22:58 05/04/2020"),
                    ),
                  ],
                ),
              )
            ],
          )),
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
