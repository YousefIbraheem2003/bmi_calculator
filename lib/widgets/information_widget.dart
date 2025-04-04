import 'package:bmi_calculator/categories/gender_categorie.dart';
import 'package:bmi_calculator/widgets/age_widget.dart';
import 'package:bmi_calculator/widgets/height_widget.dart';
import 'package:bmi_calculator/widgets/weight_widget.dart';
import 'package:flutter/material.dart';

class InformationWidget extends StatefulWidget {
  const InformationWidget(
      {super.key,
      required this.onChangedHeight,
      required this.onChangedWeight});
  final Function(double weight) onChangedWeight;
  final Function(double height) onChangedHeight;

  @override
  State<InformationWidget> createState() => _InformationWidgetState();
}

class _InformationWidgetState extends State<InformationWidget> {
  double weight = 0;
  double height = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          const GenderCategorie(),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              HeightWidget(
                onChanged: (value) {
                  height = value;
                  setState(() {});
                  widget.onChangedHeight(height);
                },
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              WeightWidget(
                onChanged: (value) {
                  weight = value;
                  setState(() {});
                  widget.onChangedWeight(weight);
                },
              ),
              const SizedBox(
                width: 20,
              ),
              AgeWidget(),
            ],
          )
        ],
      ),
    );
  }
}
