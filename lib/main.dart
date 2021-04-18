import 'package:flutter/material.dart';
import 'package:my_compta_app/views/main-views/main.dart';
import 'package:my_compta_app/workers/main.dart';

void main() async {
  await initWorders();

  runApp(MyApp());
}
