import 'package:flutter/material.dart';

class Relat extends StatefulWidget {
  const Relat({super.key});

  @override
  State<Relat> createState() => _RelatState();
}

class _RelatState extends State<Relat> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            const Text(nome),
            const Text(bebida),
          )
        ],
      ),
    );
  }
}
