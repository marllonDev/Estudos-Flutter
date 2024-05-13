import 'package:flutter/material.dart';
import 'package:reatividade_project/widgets/count_controller_v2.dart';
import 'package:reatividade_project/widgets/counter_controller.dart';

class MyHomePagev2 extends StatelessWidget {
  final String title;
  final CountControllerV2 counterController = CountControllerV2();

  MyHomePagev2({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          ListenableBuilder(
            listenable: counterController,
            builder: (BuildContext context, Widget? child) {
              return Text(
                '${counterController.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: counterController.reset,
                  tooltip: 'Reset Counter',
                  child: const Icon(Icons.restart_alt),
                ),
                FloatingActionButton(
                  onPressed: counterController.decrement,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: counterController.increment,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}