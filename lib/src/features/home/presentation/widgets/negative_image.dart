import 'package:flutter/material.dart';

class NegativeImage extends StatelessWidget {
  final bool isNegative;
  final Image child;
  const NegativeImage({Key? key, required this.isNegative, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isNegative) {
      return ColorFiltered(
        colorFilter: const ColorFilter.matrix([
          -1, //RED
          0,
          0,
          0,
          255, //GREEN
          0,
          -1,
          0,
          0,
          255, //BLUE
          0,
          0,
          -1,
          0,
          255, //ALPHA
          0,
          0,
          0,
          1,
          0,
        ]),
        child: child,
      );
    } else {
      return child;
    }
  }
}
