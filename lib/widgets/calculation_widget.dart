import 'package:flutter/material.dart';

class CalculationWidget extends StatelessWidget {
  const CalculationWidget(
      {super.key, required this.result, required this.text});
  final double result;
  final String text;
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
              result.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
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
