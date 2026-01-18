import 'package:flutter/material.dart';
import 'package:leanr_ui_2/widgets/custom_grid_view.dart';
import 'package:leanr_ui_2/widgets/custom_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CustomScrollView(
        slivers: [
          CustomGridView(),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          CustomSliverList(),
        ],
      ),
    );
  }
}
