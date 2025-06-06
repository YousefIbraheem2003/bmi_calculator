import 'package:bmi_calculator/categories/gender_categorie.dart';
import 'package:bmi_calculator/widgets/age_widget.dart';
import 'package:bmi_calculator/widgets/height_widget.dart';
import 'package:bmi_calculator/widgets/weight_widget.dart';
import 'package:flutter/material.dart';

class InformationWidget extends StatefulWidget {
  const InformationWidget({
    super.key,
    required this.onChangedHeight,
    required this.onChangedWeight,
    required this.onChangedage,
    required this.onChangedGender,
    required this.rullerBackGroundColor,
  });
  final Function(int weight) onChangedWeight;
  final Function(double height) onChangedHeight;
  final Function(int age) onChangedage;
  final Function(String gender) onChangedGender;
  final Color rullerBackGroundColor;
  @override
  State<InformationWidget> createState() => _InformationWidgetState();
}

class _InformationWidgetState extends State<InformationWidget> {
  int weight = 0;
  double height = 0;
  int age = 0;
  String gender = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          GenderCategorie(
            genderSelection: (value) {
              gender = value;
              setState(() {});
              widget.onChangedGender(gender);
            },
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              HeightWidget(
                rullerBackGroundColor: widget.rullerBackGroundColor,
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
              AgeWidget(
                onChanged: (value) {
                  age = value;
                  setState(() {});
                  widget.onChangedage(age);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
