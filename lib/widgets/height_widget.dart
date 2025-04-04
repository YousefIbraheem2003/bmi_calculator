import 'package:bmi_calculator/categories/ruler_widget.dart';
import 'package:flutter/material.dart';

class HeightWidget extends StatefulWidget {
  const HeightWidget({super.key, required this.onChanged});
  final Function(double height) onChanged;

  @override
  State<HeightWidget> createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  @override
  Widget build(BuildContext context) {
    num height = 0;
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
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Height (in cm)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(child: RulerWidget(
              onChanged: (value) {
                height = value;
                setState(() {});
                widget.onChanged(height.toDouble());
              },
            ))
          ],
        ),
      ),
    );
  }
}
