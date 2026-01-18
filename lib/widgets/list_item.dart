import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Color(0xffebebeb),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
