import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class Category {
  final int id;
  final String name;
  final IconData icon;
  final Color color;

  Category({required this.id, required this.name, required this.icon, required this.color});
}