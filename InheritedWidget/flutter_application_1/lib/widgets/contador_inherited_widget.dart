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
    return context.dependOnInheritedWidgetOfExactType<ContadorInheritedWidget>();
  }

  @override
  bool updateShouldNotify(ContadorInheritedWidget oldWidget) {
    return contador != oldWidget.contador;
  }
}