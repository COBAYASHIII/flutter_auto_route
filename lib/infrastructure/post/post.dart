import 'package:flutter/material.dart';

class Post {
  final Color color;
  final String title;
  final int id;
  Post(this.color, this.title, this.id);

  static final posts = [
    Post(Colors.amberAccent, 'Post1', 1),
    Post(Colors.blue, 'Post 2', 2),
    Post(Colors.pinkAccent, 'Post 3', 3),
  ];
}