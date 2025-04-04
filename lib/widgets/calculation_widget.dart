import 'package:flutter/material.dart';

class CalculationWidget extends StatelessWidget {
  const CalculationWidget(
      {super.key, required this.height, required this.weight});
  final double weight;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Bmi is',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            // weight/height
            Text(
              "${weight / (height * height)}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const Text(
              '(Normal)',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'text kbera awy awy awy awy 1',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.save,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.share,
                  color: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
