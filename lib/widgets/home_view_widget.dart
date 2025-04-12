import 'dart:math';

import 'package:bmi_calculator/widgets/calculation_widget.dart';
import 'package:bmi_calculator/widgets/information_widget.dart';
import 'package:bmi_calculator/widgets/profile_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

//navigation bar icons
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
  const HomeViewWidget({super.key, required this.buttonIsChecked});
  final Function(bool isChecked) buttonIsChecked;
  @override
  State<HomeViewWidget> createState() => _HomeViewWidgetState();
}

class _HomeViewWidgetState extends State<HomeViewWidget> {
  //index of the pages
  int index = 0;
  int weight = 0;
  double height = 0;
  int age = 0;
  String result = '';
  // text that describe your obbesity
  String text = '';
  String gender = '';
  bool isChecked = false;
  Color rullerBackGroundcolor = Colors.white;

  // check if the weight and height is equal to zero if yes it doesnot change the page
  int indexOfThePage({
    required int index,
    required int weight,
    required double height,
    required String gender,
  }) {
    if (weight == 0 || height == 0 || age == 0 || gender == '') {
      index = 0;
    }

    return index;
  }

  // calculate your bmi
  String bmiCalculation({
    required int weight,
    required double height,
  }) {
    double resultDecimal = weight / pow((height / 100), 2);

    result = resultDecimal.toStringAsFixed(1);

    return result;
  }

// ckeks the type of obesity
  String bmiText(
      {required String result, required int weight, required double height}) {
    double resultOneDigit = double.parse(result);
    String text = '';
    if (weight == 0 && height == 0) {
      text = 'enter your weight and  height';
    } else if (resultOneDigit == 0.0) {
      text = 'your weight or height is invalid ';
    } else if (resultOneDigit > 0 && resultOneDigit <= 18.5) {
      text = 'Underweight';
    } else if (resultOneDigit > 18.5 && resultOneDigit <= 24.9) {
      text = 'Normal weight';
    } else if (resultOneDigit > 24.9 && resultOneDigit <= 29.9) {
      text = 'Overweight';
    } else if (resultOneDigit > 29.9 && resultOneDigit <= 34.9) {
      text = 'Obesity Class I';
    } else if (resultOneDigit > 34.9 && resultOneDigit <= 39.9) {
      text = 'Obesity Class II';
    } else {
      text = 'Obesity Class III';
    }
    return text;
  }

// change the color of the rullerBackGround
  Color rullerBackGroundColor({required Color color, required bool isChecked}) {
    if (isChecked == false) {
      color;
    } else {
      color = Colors.black;
    }

    setState(() {});
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.blue,
        color: Colors.blue,
        index: indexOfThePage(
            index: index, weight: weight, height: height, gender: gender),
        onTap: (selectedIndex) {
          if ((weight == 0 || height == 0 || age == 0 || gender == '') &&
              selectedIndex > 0) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                  content: Text('please enter you information first')),
            );
          }
          index = selectedIndex;
          setState(
            () {},
          );
        },
        items: icons,
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              if (isChecked == false) {
                isChecked = true;
              } else if (isChecked == true) {
                isChecked = false;
              }
              widget.buttonIsChecked(isChecked);
              setState(() {});
            },
            icon: const Icon(
              Icons.brightness_6,
            ),
          )
        ],
        title: const Text(
          'BMI Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: IndexedStack(
        index: indexOfThePage(
          gender: gender,
          index: index,
          weight: weight,
          height: height,
        ),
        children: [
          InformationWidget(
            rullerBackGroundColor: rullerBackGroundColor(
                color: rullerBackGroundcolor, isChecked: isChecked),
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
