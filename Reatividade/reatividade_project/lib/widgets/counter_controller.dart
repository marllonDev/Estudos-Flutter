import 'package:flutter/material.dart';

class CounterController extends ValueNotifier {
  CounterController(super.value);

  increment() => value++;
  decrement() => value--;
}
