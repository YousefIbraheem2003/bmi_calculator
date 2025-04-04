import 'package:flutter/material.dart';

class AgeWidget extends StatefulWidget {
  const AgeWidget({
    super.key,
  });

  @override
  State<AgeWidget> createState() => _AgeWidgetState();
}

class _AgeWidgetState extends State<AgeWidget> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 15,
              ),
              child: Text(
                'age',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: const Text(
                    '-',
                    style: TextStyle(fontSize: 50, color: Colors.grey),
                  ),
                  onTap: () {
                    number.toString;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  number.toString(),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 30),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 40, color: Colors.grey),
                  ),
                  onTap: () {
                    number++;
                    setState(() {});
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
