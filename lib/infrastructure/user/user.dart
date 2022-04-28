import 'package:flutter/material.dart';

class User {
  final Color color;
  final int id;
  User(this.color, this.id);

  static final users = [
    User(Colors.amberAccent, 1),
    User(Colors.blue, 2),
    User(Colors.pinkAccent, 3),
  ];
}