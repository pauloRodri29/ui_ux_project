import 'package:flutter/material.dart';

class Midfielders extends StatelessWidget {
  const Midfielders({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.hourglass_empty,
            size: 48,
          ),
          Text("Empyt"),
        ],
      ),
    );
  }
}
