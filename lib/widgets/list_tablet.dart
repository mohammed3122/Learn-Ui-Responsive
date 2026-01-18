import 'package:flutter/material.dart';
import 'package:leanr_ui_2/widgets/grid_item.dart';

class ListForTaplet extends StatelessWidget {
  const ListForTaplet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return GridItem();
        },
      ),
    );
  }
}
