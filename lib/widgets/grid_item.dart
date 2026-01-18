import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffb4b4b4),
            borderRadius: BorderRadius.circular(10),
          ),
          child: MediaQuery.of(context).size.width > 1024
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: FittedBox(
                      child: Text(
                        'DeskTop Layout',
                        style: TextStyle(fontSize: 50, color: Colors.black),
                      ),
                    ),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
