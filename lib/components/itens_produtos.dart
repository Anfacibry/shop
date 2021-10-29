import 'package:flutter/material.dart';
import 'package:shop/models/produtos.dart';

class ItensProdutos extends StatelessWidget {
  final Produtos produto;
  const ItensProdutos(this.produto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      ),
      child: GridTile(
          child: Image.network(
            produto.imageUrl!,
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black45,
            title: Text(
              produto.titulo!,
              textAlign: TextAlign.center,
            ),
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
          )),
    );
  }
}
