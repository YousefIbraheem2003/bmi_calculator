import 'package:flutter/material.dart';

class CalculationWidget extends StatelessWidget {
  const CalculationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        color: Colors.blue,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your Bmi is',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            Text(
              '19.6 kg/m',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Text(
              '(Normal)',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'text kbera awy awy awy awy 1',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
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
