// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/botao_contador.dart';
import 'package:flutter_application_1/widgets/contador_inherited_widget.dart';

class TelaContador extends StatefulWidget {
  const TelaContador({super.key});

  @override
  _TelaContadorState createState() => _TelaContadorState();
}

class _TelaContadorState extends State<TelaContador> {
  int _contador = 0;

  void _incrementar() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ContadorInheritedWidget(
      contador: _contador,
      incrementar: _incrementar,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Contador InheritedWidget'),
        ),
        body: const Center(
          child: BotaoContador(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementar,
          tooltip: 'Incrementar',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}