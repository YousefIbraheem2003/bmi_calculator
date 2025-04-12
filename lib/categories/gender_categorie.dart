import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:flutter/material.dart';

class GenderCategorie extends StatefulWidget {
  const GenderCategorie({super.key, required this.genderSelection});

  final Function(String gender) genderSelection;
  @override
  State<GenderCategorie> createState() => _GenderCategorieState();
}

class _GenderCategorieState extends State<GenderCategorie> {
  Color maleColor = Colors.grey;
  Color femaleColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              maleColor = Colors.red;
              femaleColor = Colors.grey;
              widget.genderSelection('male');
              setState(() {});
            },
            child: GenderWidget(
              color: maleColor,
              gender: 'male',
              photo: 'assets/malelogo.jpg',
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              femaleColor = Colors.red;
              maleColor = Colors.grey;
              widget.genderSelection('female');
              setState(() {});
            },
            child: GenderWidget(
              color: femaleColor,
              gender: 'female',
              photo: 'assets/female.jpg',
            ),
          ),
        ),
      ],
    );
  }
}
