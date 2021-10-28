import 'package:flutter/material.dart';
import 'package:shop/data/dados_produtos.dart';
import 'package:shop/models/produtos.dart';

class PaginaGrideProdutos extends StatelessWidget {
  final List<Produtos> listaProdutos = dadosProdutos;
  PaginaGrideProdutos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Minha Loja"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: listaProdutos.length,
          itemBuilder: (ctx, index) => Text(listaProdutos[index].titulo!),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //Quantidade de cada elemento em cada linha
            childAspectRatio: 3 / 2, //Relação entre altura e lagura
            crossAxisSpacing: 10, // Espaçamento no eixo cruzado
            mainAxisSpacing: 10, // Espaçamento no eixo principal
          ),
        ),
      ),
    );
  }
}
