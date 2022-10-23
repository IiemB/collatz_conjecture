import 'package:collatz_conjecture/src/utils/utils.dart';
import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      onPressed: () => Navigator.pop(context),
      icon: Icon(
        Icons.arrow_back,
        color: context.theme.textTheme.headline4?.color,
      ),
    );
  }
}
