import 'dart:async';

import 'package:bmi_calculator/functions/functions.dart';
import 'package:flutter/material.dart';

class WeightWidget extends StatefulWidget {
  const WeightWidget({
    super.key,
    required this.onChanged,
  });
  final Function(int weight) onChanged;
  @override
  State<WeightWidget> createState() => _WeightWidgetState();
}

class _WeightWidgetState extends State<WeightWidget> {
  int weight = 0;
  Timer? timer;
  void increment({int step = 1}) {
    weight += step;
    setState(() {});
    widget.onChanged(weight);
  }

  void startIncreasing() {
    increment();
    timer = Timer.periodic(Duration(milliseconds: 100), (timer) {
      increment(step: 1);
    });
  }

  void stopIncreasing() {
    timer?.cancel();
  }

  void decrement() {
    weight--;
    setState(() {});
    widget.onChanged(weight);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
              child: Text(
                'Weight (in kg)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 50, color: buttonColor(weight)),
                  ),
                  onTap: () {
                    if (weight > 0) {
                      decrement();
                    }
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  weight.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 40, color: Colors.grey),
                  ),
                  onTap: () {
                    increment();
                  },
                  onLongPressStart: (_) {
                    startIncreasing();
                    setState(() {});
                  },
                  onLongPressEnd: (_) {
                    stopIncreasing();
                    setState(() {});
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
