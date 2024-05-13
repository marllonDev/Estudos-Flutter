import 'package:flutter/material.dart';

class CountControllerV2 extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();//add notifyListeners para notificar quem ouvir ao clicasr
  }

  void reset() {
    count = 0;
    notifyListeners();//add notifyListeners para notificar quem ouvir ao clicasr
  }

  void decrement() {
    count--;
    notifyListeners();//add notifyListeners para notificar quem ouvir ao clicasr
  }
}
