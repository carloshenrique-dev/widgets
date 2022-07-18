import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class Header extends SliverPersistentHeaderDelegate {
  final double max;
  final double min;
  final Widget widget;
  final Color color;
  Header({
    this.color = AppColors.white,
    required this.widget,
    this.max = 130,
    this.min = 130,
  });
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return LayoutBuilder(
      builder: ((context, constraints) => Container(
            color: color,
            height: constraints.maxHeight,
            child: widget,
          )),
    );
  }

  @override
  double get maxExtent => max;

  @override
  double get minExtent => min;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
