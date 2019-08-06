import 'package:flutter/material.dart';
import 'package:primer/home.dart';
import 'package:primer/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Primer',
          home: Home(),
          debugShowCheckedModeBanner: false,
          theme: themeData,
    );
  }
}
