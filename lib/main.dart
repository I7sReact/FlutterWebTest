import 'package:flutter/material.dart';
import 'package:pagina/models/produto.dart';
import 'package:pagina/pages/produto_cadastro.dart';
import 'package:pagina/pages/relat.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            const Text('ESCOLHA UMA DAS OPÇÕES (RELATÓRIO E CADASTRO)'),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProdutoCadastro(
                              adicCallback: adicionar, rmCallback: remover)));
                },
                child: const Text('Cadastro')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Relat()));
                },
                child: const Text('Relatório')),
          ])
        ],
      ),
    );
  }
}
