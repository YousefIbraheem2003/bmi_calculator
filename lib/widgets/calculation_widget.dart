import 'package:flutter/material.dart';

class CalculationWidget extends StatelessWidget {
  const CalculationWidget(
      {super.key, required this.result, required this.text});
  final String result;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Your Bmi is',
            ),
            // weight/height
            Text(
              result.toString(),
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              // describe your bmi
              text,
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.save,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.share,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
