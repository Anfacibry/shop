import 'package:flutter/cupertino.dart';

class Produtos {
  final String? id;
  final String? titulo;
  final String? descricao;
  final double? preco;
  final String? imageUrl;
  bool favorito;

  Produtos({
    @required this.id,
    @required this.titulo,
    @required this.descricao,
    @required this.preco,
    @required this.imageUrl,
    this.favorito = false,
  });

  void eFavorito() {
    favorito = !favorito;
  }
}
