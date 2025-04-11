import 'package:bmi_calculator/themes/get_dark_theme.dart';
import 'package:bmi_calculator/themes/get_light_theme.dart';
import 'package:bmi_calculator/widgets/home_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getLightTheme(),
      darkTheme: getDarkTheme(),
      themeMode: isChecked ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: HomeViewWidget(
        buttonIsChecked: (value) {
          isChecked = value;
          setState(() {});
        },
      ),
    );
  }
}
