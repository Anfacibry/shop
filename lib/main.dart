import 'package:flutter/material.dart';
import 'package:shop/pages/paginas_grides_produtos.dart';
import 'package:shop/pages/produto_detalhe.dart';
import 'package:shop/utils/rotas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
        ).copyWith(
          secondary: Colors.deepOrange,
        ),
        fontFamily: "Lato",
      ),
      home: PaginaGrideProdutos(),
      routes: {
        AppRotas.totasDadosProdutos: (ctx) => const ProdutoDetalhe(),
      },
    );
  }
}
