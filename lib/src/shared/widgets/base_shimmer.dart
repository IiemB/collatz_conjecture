import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BaseShimmer extends StatelessWidget {
  final Widget child;
  final ShimmerDirection shimmerDirection;
  const BaseShimmer({
    Key? key,
    required this.child,
    this.shimmerDirection = ShimmerDirection.ltr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: context.themeData.cardColor,
      highlightColor: context.themeData.colorScheme.secondary,
      enabled: true,
      direction: shimmerDirection,
      child: child,
    );
  }
}
