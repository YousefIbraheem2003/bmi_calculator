import 'package:bmi_calculator/categories/gender_categorie.dart';
import 'package:bmi_calculator/widgets/age_widget.dart';
import 'package:bmi_calculator/widgets/height_widget.dart';
import 'package:bmi_calculator/widgets/weight_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeViewWidget extends StatelessWidget {
  const HomeViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        color: Colors.blue,
        items: [
          Icon(
            Icons.monitor_heart,
            color: Colors.white,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              alignment: Alignment.center,
              child: Text(
                'BMI',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          Icon(
            Icons.person,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
      // bottomNavigationBar: NavigationBar(
      //   backgroundColor: const Color(0xFF2566CF),
      //   height: 80,
      //   elevation: 0,
      //   selectedIndex: 0,
      //   destinations: const [
      //     NavigationDestination(
      //         icon: Icon(
      //           Icons.monitor_heart,
      //           color: Colors.white,
      //         ),
      //         label: 'activity'),
      //     NavigationDestination(
      //         icon: Icon(
      //           Icons.person,
      //           color: Colors.white,
      //         ),
      //         label: 'profile')
      //   ],
      // ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'BMI Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: const Padding(
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
      ),
    );
  }
}
