import 'package:collatz_conjecture/src/features/about/about.dart';
import 'package:flutter/material.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'About',
      onPressed: () => Navigator.pushNamed(context, AboutPage.routeName),
      icon: const Icon(Icons.info_outlined),
    );
  }
}
