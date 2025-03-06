import 'package:bmi_calculator/widgets/ruler_widget.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatelessWidget {
  const HeightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Height (in cm)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(child: RulerWidget())
          ],
        ),
      ),
    );
  }
}
