import 'package:flutter/material.dart';

class Airline {
  String name;
  String imageAsset;
  IconData icon;
  double salary;
  String description;
  String website;
  String contactNumber;

  Airline({
    required this.name,
    required this.imageAsset,
    required this.icon,
    required this.salary,
    required this.description,
    required this.website,
    required this.contactNumber,
  });
}
