import 'package:flutter_ruler_picker/flutter_ruler_picker.dart';
import 'package:flutter/material.dart';

class RulerWidget extends StatefulWidget {
  const RulerWidget({
    super.key,
  });
  @override
  State<RulerWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RulerWidget> {
  RulerPickerController? _rulerPickerController;

  num currentValue = 0;

  List<RulerRange> ranges = const [
    RulerRange(begin: 0, end: 250, scale: 1),
  ];

  @override
  void initState() {
    super.initState();
    _rulerPickerController = RulerPickerController(value: currentValue);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            currentValue.toStringAsFixed(1),
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          RulerPicker(
            controller: _rulerPickerController!,
            onBuildRulerScaleText: (index, value) {
              return value.toInt().toString();
            },
            ranges: ranges,
            onValueChanged: (value) {
              setState(() {
                currentValue = value;
              });
            },
            width: MediaQuery.of(context).size.width,
            height: 50,
            rulerMarginTop: 5,
          ),
        ],
      ),
    );
  }
}
