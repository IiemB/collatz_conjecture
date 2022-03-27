import 'package:collatz_conjecture/src/utils/constants.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class AppNameText extends StatelessWidget {
  const AppNameText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: kToolbarHeight / 4,
      ),
      child: Column(
        children: [
          Text(
            Constanst.string.appTitle,
            style: context.themeData.textTheme.headline4,
          ),
          const Text('Powered by Flutter')
        ],
      ),
    );
  }
}
