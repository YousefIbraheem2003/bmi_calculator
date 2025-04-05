import 'package:flutter/material.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget({
    super.key,
    required this.gender,
    required this.photo,
  });
  final String gender;
  final String photo;

  @override
  State<GenderWidget> createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  String gender = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 110,
            width: 110,
            child: Image(
              image: AssetImage(widget.photo),
            ),
          ),
          Text(
            widget.gender,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
