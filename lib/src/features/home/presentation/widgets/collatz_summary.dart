import 'package:collatz_conjecture/src/utils/constants.dart';
import 'package:flutter/material.dart';

class CollatzSummary extends StatelessWidget {
  const CollatzSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          Constanst.text1,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
