import 'package:flutter/material.dart';
import 'package:leanr_ui_2/widgets/list_item.dart';

class CustomSliverList extends StatelessWidget {
  const CustomSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListItem();
      },
    );
  }
}
