import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/contador_inherited_widget.dart';

class BotaoContador extends StatelessWidget {
  const BotaoContador({super.key});

  @override
  Widget build(BuildContext context) {
    final inheritedWidget = ContadorInheritedWidget.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Você pressionou o botão:',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          '${inheritedWidget?.contador ?? 0}',
          style: Theme.of(context).textTheme.displayLarge,
        ),
        ElevatedButton(
          onPressed: inheritedWidget?.incrementar,
          child: const Text('Incrementar'),
        ),
      ],
    );
  }
}