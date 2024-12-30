import 'package:flutter/material.dart';

class Transactions {
  final IconData icon;
  final String title;
  final String details;
  final double value;

  Transactions({
    required this.icon,
    required this.title,
    required this.details,
    required this.value,
  });
}
