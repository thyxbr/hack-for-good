class Produto {
  int _idProduto;
  String _nomeProduto;
  String _nomeEstabelecimento;
  String _bairro;
  String _lagradouro;
  String _numero;
  String _telefone;
  bool _estoque;
  String image;

  int get idProduto => _idProduto;

  set idProduto(int value) {
    _idProduto = value;
  }

  String get nomeProduto => _nomeProduto;

  bool get estoque => _estoque;

  set estoque(bool value) {
    _estoque = value;
  }

  String get telefone => _telefone;

  set telefone(String value) {
    _telefone = value;
  }

  String get numero => _numero;

  set numero(String value) {
    _numero = value;
  }

  String get lagradouro => _lagradouro;

  set lagradouro(String value) {
    _lagradouro = value;
  }

  String get bairro => _bairro;

  set bairro(String value) {
    _bairro = value;
  }

  String get nomeEstabelecimento => _nomeEstabelecimento;

  set nomeEstabelecimento(String value) {
    _nomeEstabelecimento = value;
  }

  set nomeProduto(String value) {
    _nomeProduto = value;
  }


}