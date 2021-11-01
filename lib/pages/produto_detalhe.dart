import 'package:flutter/material.dart';
import 'package:shop/models/produtos.dart';

class ProdutoDetalhe extends StatelessWidget {
  const ProdutoDetalhe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Produtos produto =
        ModalRoute.of(context)!.settings.arguments as Produtos;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          produto.titulo!,
        ),
        centerTitle: true,
      ),
    );
  }
}
