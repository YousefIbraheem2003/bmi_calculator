import 'package:flutter/material.dart';

class WeightWidget extends StatefulWidget {
  const WeightWidget({
    super.key,
    required this.onChanged,
  });
  final Function(double weight) onChanged;
  @override
  State<WeightWidget> createState() => _WeightWidgetState();
}

class _WeightWidgetState extends State<WeightWidget> {
  double weight = 0;
  void increment() {
    weight++;
    setState(() {});
    widget.onChanged(weight);
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
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 50, color: Colors.grey),
                  ),
                  onTap: () {
                    decrement();
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
