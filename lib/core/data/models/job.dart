import 'package:flutter/material.dart';

class Job {
  Job({@required this.name, @required this.ratePerHour});

  final int ratePerHour;
  final String name;

  factory Job.fromMap(Map<String, dynamic> data) {
    if (data == null) {
      return null;
    }
    final String name = data['name'];
    final int ratePerHour = data['rate'];
    return Job(
      name: name,
      ratePerHour: ratePerHour,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'ratePerHour': ratePerHour,
    };
  }
}
