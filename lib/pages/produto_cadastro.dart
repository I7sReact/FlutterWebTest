import 'package:flutter/material.dart';
import 'package:pagina/models/produto.dart';

class ProdutoCadastro extends StatefulWidget {
  const ProdutoCadastro(
      {super.key, required this.adicCallback, required this.rmCallback});

  final void Function(Produto) adicCallback;
  final void Function(Produto) rmCallback;

  @override
  State<ProdutoCadastro> createState() => _ProdutoCadastroState();
}

class _ProdutoCadastroState extends State<ProdutoCadastro> {
  List<Produto> produtos = [];
  void adicionar(Produto produto) {
    debugPrint('Adicionar produto: ${produto.nome}, ${produto.bebida}');
  }

  void remover(Produto produto) {
    debugPrint('Remover produto: ${produto.nome}, ${produto.bebida}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(children: [
          MainAxisAlignment.center
          const Text('Cadastre o produto'),
          ElevatedButton(
              onPressed: () => widget.adicCallback(Produto('coca', true)),
              child: const Text('Adicionar')),
          ElevatedButton(
              onPressed: () => widget.rmCallback(Produto('feijão', false)),
              child: const Text('Remover')),
              ElevatedButton(onPressed: (){}, child: child)
        ])
      ],
    ));
  }
}
