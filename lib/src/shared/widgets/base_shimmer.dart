import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BaseShimmer extends StatelessWidget {
  final Widget child;
  final ShimmerDirection shimmerDirection;
  final Color? baseColor;
  final Color? highlightColor;
  const BaseShimmer({
    Key? key,
    required this.child,
    this.shimmerDirection = ShimmerDirection.ltr,
    this.baseColor,
    this.highlightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor ?? context.theme.cardColor,
      highlightColor: highlightColor ?? context.theme.colorScheme.secondary,
      enabled: true,
      direction: shimmerDirection,
      child: child,
    );
  }
}
