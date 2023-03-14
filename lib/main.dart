import 'package:flutter/material.dart';
import 'package:flutter_bloc_02022023/demo_bloc_pattern/demo_bloc_pattern_widget.dart';

import 'demo_bloc_lib/demo_bloc_lib_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoBlocLibWidget(),
    );
  }
}
