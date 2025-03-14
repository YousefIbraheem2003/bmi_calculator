import 'package:bmi_calculator/categories/gender_categorie.dart';
import 'package:bmi_calculator/widgets/age_widget.dart';
import 'package:bmi_calculator/widgets/height_widget.dart';
import 'package:bmi_calculator/widgets/weight_widget.dart';
import 'package:flutter/material.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          GenderCategorie(),
          SizedBox(
            height: 30,
          ),
          Row(children: [HeightWidget()]),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              WeightWidget(),
              SizedBox(
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
