import 'package:bmi_calculator/widgets/calculation_widget.dart';
import 'package:bmi_calculator/widgets/information_widget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeViewWidget extends StatefulWidget {
  const HomeViewWidget({super.key});

  @override
  State<HomeViewWidget> createState() => _HomeViewWidgetState();
}

class _HomeViewWidgetState extends State<HomeViewWidget> {
  int index = 0;
  double weight = 0;
  double height = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.blue,
        color: Colors.blue,
        index: index,
        onTap: (selectedIndex) {
          setState(
            () {
              index = selectedIndex;
            },
          );
        },
        items: [
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
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
          ),
          const Icon(
            Icons.person,
            color: Colors.white,
            size: 30,
          ),
        ],
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
        index: index, // This controls which widget is visible
        children: [
          InformationWidget(
            onChangedWeight: (value) {
              weight = value.toDouble();
              setState(() {});
            },
            onChangedHeight: (value) {
              height = value.toDouble();
              setState(() {});
            },
          ),
          CalculationWidget(
            weight: weight,
            height: height,
          ),
        ],
      ),
    );
  }

  // Widget getSelctedWidget({
  //   required int index,
  //   required double newheight,
  //   required double newWeight,
  // }) {
  //   Widget widget = InformationWidget(
  //     weightChanged: (value) {
  //       newWeight = value.toDouble();
  //       setState(() {});
  //     },
  //     heightChanged: (value) {
  //       newheight = value.toDouble();
  //       setState(() {});
  //     },
  //   );
  //   switch (index) {
  //     case 1:
  //       widget = CalculationWidget(
  //         wieght: newWeight,
  //         height: newheight,
  //       );
  //       break;
  //     case 2:
  //       widget = const Text('nothing here');
  //       break;
  //   }
  //   return widget;
  // }
}
