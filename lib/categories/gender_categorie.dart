import 'package:bmi_calculator/widgets/gender_widget.dart';
import 'package:flutter/material.dart';

class GenderCategorie extends StatefulWidget {
  const GenderCategorie({super.key, required this.genderSelection});

  final Function(String gender) genderSelection;
  @override
  State<GenderCategorie> createState() => _GenderCategorieState();
}

class _GenderCategorieState extends State<GenderCategorie> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              widget.genderSelection('male');
              setState(() {});
            },
            child: const GenderWidget(
                gender: 'male', photo: 'assets/malelogo.jpg'),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              widget.genderSelection('female');
              setState(() {});
            },
            child: const GenderWidget(
              gender: 'female',
              photo: 'assets/female.jpg',
            ),
          ),
        ),
      ],
    );
  }
}
