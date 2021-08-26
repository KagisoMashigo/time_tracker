import 'package:flutter/material.dart';

class Job {
  Job({
    @required this.name,
    @required this.ratePerHour,
  });

  final int ratePerHour;
  final String name;

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'ratePerHour': ratePerHour,
    };
  }
}
