import 'package:flutter/material.dart';

class CounterController extends ValueNotifier<int> {
  // aqui estou dizendo que o valor que irá começar será sempre 0
  CounterController() : super(0);

//aqui eu acesso o value do ValueNotifier e digo o que é para fazer, nesse caso é somar
  increment() => value++;

//aqui eu acesso o value do ValueNotifier e digo o que é para fazer, nesse caso é diminuir
  decrement() => value--;

//aqui eu acesso o value do ValueNotifier e digo o que é para fazer, nesse caso é resetar
  reset() => value = 0;
}
