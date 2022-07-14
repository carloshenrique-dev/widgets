import 'package:flutter/material.dart';

import '../../../core/ui/themes/app_colors.dart';
import '../../../core/ui/widgets/filter_bottom_sheet.dart';

class HeaderWidget extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context, double shrinkOffset, bool overlapsContent) {
      return LayoutBuilder(
        builder: (context, constraints){
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  color: AppColors.purpleBlue,
                  size: 35.0,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const FilterBottomSheet(),
            ],
        );
      },
    );
  }
  @override
  double get maxExtent => 50;

  @override
  double get minExtent => 50;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
