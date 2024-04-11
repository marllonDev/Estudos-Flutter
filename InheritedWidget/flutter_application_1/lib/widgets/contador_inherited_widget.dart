import 'package:flutter/material.dart';

class ContadorInheritedWidget extends InheritedWidget {
  final int contador;
  final Function() incrementar;

  const ContadorInheritedWidget({
    super.key,
    required this.contador,
    required this.incrementar,
    required super.child,
  });

  static ContadorInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ContadorInheritedWidget>();//aqui ele pega o estado do seu ansestral e depois passa via contexto
  }

  @override
  bool updateShouldNotify(ContadorInheritedWidget oldWidget) {
    return contador != oldWidget.contador;//aqui ele verifica se o contador é diferente do último estado do contador, se for, então ele retorna true, então é reconstruído o Widget.
  }
}