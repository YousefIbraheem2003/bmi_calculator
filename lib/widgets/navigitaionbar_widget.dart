import 'package:flutter/material.dart';

class NavigitaionbarWidget extends StatelessWidget {
  const NavigitaionbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.local_activity), label: 'activity')
        ],
      ),
    );
  }
}
