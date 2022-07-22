import 'package:flutter/material.dart';
import 'package:widgets/app/core/ui/themes/app_colors.dart';

class Header extends SliverPersistentHeaderDelegate {
  final Color color;
  final Widget widget;
  final double maxHeight;
  final double minHeight;

  Header({
    required this.widget,
    this.maxHeight = 130,
    this.minHeight = 130,
    this.color = AppColors.backgroundColor,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        color: color,
        height: constraints.maxHeight,
        child: widget,
      ),
    );
  }

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
