import 'package:flutter/material.dart';

class Defenders extends StatelessWidget {
  const Defenders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.hourglass_empty,
          size: 48,
        ),
        Text("Empyt"),
      ],
    );
  }
}
