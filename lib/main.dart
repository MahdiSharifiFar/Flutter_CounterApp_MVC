import 'package:counter_app_mvc/Features/Counter/counter_controller.dart';
import 'package:counter_app_mvc/Features/Counter/counter_view.dart';
import 'package:flutter/material.dart';

void main() {
  final counterController = CounterController();
  runApp(MainApp(
    counterController: counterController,
  ));
}

class MainApp extends StatelessWidget {
  final CounterController counterController;
  const MainApp({super.key, required this.counterController});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterView(
        counterModel: counterController.model,
      ),
    );
  }
}
