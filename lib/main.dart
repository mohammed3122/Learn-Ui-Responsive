import 'package:flutter/material.dart';
import 'package:leanr_ui_2/views/home_view.dart';

void main() {
  runApp(const LearnUI());
}

class LearnUI extends StatelessWidget {
  const LearnUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
