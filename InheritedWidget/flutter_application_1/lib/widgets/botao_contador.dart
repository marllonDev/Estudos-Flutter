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
          style: Theme.of(context).textTheme.headlineMedium,// aqui mostra o texto nesse formato um pouco menor que o número abaixo dele.
        ),
        Text(
          '${inheritedWidget?.contador ?? 0}',// esses dois"??" é chamado "operador de coalescência nula". Isos quer dizer que se o valor a esquerda for NUll, então o valor a direita entrará em vigor.
          style: Theme.of(context).textTheme.displayLarge,// aqui mostra o número em grande escala para dar destaque.
        ),
        ElevatedButton(// esse botão é o qeu fica abaixo do número mostrado na tela
          onPressed: inheritedWidget?.incrementar,
          child: const Text('Incrementar'),
        ),
      ],
    );
  }
}