import 'package:flutter/material.dart';
import 'package:reatividade_project/widgets/counter_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CounterController counterController = CounterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            ListenableBuilder(
              builder: (BuildContext context, Widget? child) {
                return Text(
                  '${counterController.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
              listenable: counterController,
            ),
            FloatingActionButton(
              onPressed: counterController.decrement,
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}