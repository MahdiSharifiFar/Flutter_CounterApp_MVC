import 'package:counter_app_mvc/Features/Counter/counter_model.dart';
import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  final CounterModel counterModel;
  const CounterView({super.key, required this.counterModel});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: Text(
            "${widget.counterModel.count}",
            style: const TextStyle(fontSize: 40),
          )),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                setState(() {
                  widget.counterModel.increase();
                });
              },
              child: const Text(
                "Increase",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
