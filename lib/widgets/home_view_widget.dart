import 'dart:math';

import 'package:bmi_calculator/widgets/calculation_widget.dart';
import 'package:bmi_calculator/widgets/information_widget.dart';
import 'package:bmi_calculator/widgets/profile_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

List<Widget> icons = [
  const Icon(
    Icons.monitor_heart,
    color: Colors.white,
    size: 30,
  ),
  Padding(
    padding: const EdgeInsets.only(top: 15),
    child: Container(
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: const Text(
        'BMI',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      ),
    ),
  ),
  const Icon(
    Icons.person,
    color: Colors.white,
    size: 30,
  ),
];

class HomeViewWidget extends StatefulWidget {
  const HomeViewWidget({super.key});

  @override
  State<HomeViewWidget> createState() => _HomeViewWidgetState();
}

class _HomeViewWidgetState extends State<HomeViewWidget> {
  int index = 0;
  double weight = 0;
  double height = 0;
  String result = '';
  String text = '';
  String gender = '';

  double age = 0;
  // String chossedGender(List<String>gender){

  // }
  int indexOfThePage({
    required int index,
    required double weight,
    required double height,
  }) {
    if (weight == 0 && height == 0) {
      index = 0;
    }

    return index;
  }

  // calculate your bmi
  String bmiCalculation({
    required double weight,
    required double height,
  }) {
    double resultDecimal = weight / pow((height / 100), 2);

    result = resultDecimal.toStringAsFixed(1);

    return result;
  }

// ckeks the obesity
  String bmiText(
      {required String result,
      required double weight,
      required double height}) {
    double resultOneDigit = double.parse(result);
    String text = '';
    if (weight == 0 && height == 0) {
      text = 'enter your weight and  height';
    } else if (resultOneDigit == 0.0) {
      text = 'your weight or height is invalid ';
    } else if (resultOneDigit > 0 && resultOneDigit < 18.5) {
      text = 'Underweight';
    } else if (resultOneDigit > 18.5 && resultOneDigit < 24.9) {
      text = 'Normal weight';
    } else if (resultOneDigit > 25 && resultOneDigit < 29.9) {
      text = 'Overweight';
    } else if (resultOneDigit > 30 && resultOneDigit < 34.9) {
      text = 'Obesity Class I';
    } else if (resultOneDigit > 35 && resultOneDigit < 39.9) {
      text = 'Obesity Class II';
    } else {
      text = 'Obesity Class III';
    }
    return text;
  }

  Widget icon(
      {required int index,
      required List<Widget> iconsWidget,
      required double weight,
      required double height}) {
    if (weight == 0 && height == 0) {
      return iconsWidget[0];
    } else {
      return iconsWidget[index];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.blue,
        color: Colors.blue,
        index: indexOfThePage(index: index, weight: weight, height: height),
        onTap: (selectedIndex) {
          index = selectedIndex;
          setState(
            () {},
          );
        },
        items: icons,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: indexOfThePage(
          index: index,
          weight: weight,
          height: height,
        ),
        children: [
          InformationWidget(
            onChangedGender: (value) {
              gender = value;
              setState(() {});
            },
            onChangedWeight: (value) {
              weight = value;
              setState(() {});
            },
            onChangedHeight: (value) {
              height = value;
              setState(() {});
            },
            onChangedage: (value) {
              age = value;
              setState(() {});
            },
          ),
          CalculationWidget(
            result: bmiCalculation(
              weight: weight,
              height: height,
            ),
            text: bmiText(result: result, weight: weight, height: height),
          ),
          ProfileWidget(
            gender: gender,
            height: height,
            weight: weight,
            age: age,
          ),
        ],
      ),
    );
  }
}
