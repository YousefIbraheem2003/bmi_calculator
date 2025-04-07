import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget(
      {super.key,
      required this.age,
      required this.gender,
      required this.height,
      required this.weight});
  final String gender;
  final int weight;
  final double height;
  final int age;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Text(
            'gender: $gender',
            style: const TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'age: ${age.toString()}',
            style: const TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'height: ${height.toString()}',
            style: const TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'weight: ${weight.toString()}',
            style: const TextStyle(fontSize: 25),
          ),
        ],
      ),
    );
  }
}
