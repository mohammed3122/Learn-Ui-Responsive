import 'package:flutter/material.dart';
import 'package:leanr_ui_2/widgets/custom_list.dart';
import 'package:leanr_ui_2/widgets/list_tablet.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: ListForTaplet()),
          SliverToBoxAdapter(child: SizedBox(height: 15)),
          CustomSliverList(),
        ],
      ),
    );
  }
}
