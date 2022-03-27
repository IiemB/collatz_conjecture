import 'package:collatz_conjecture/src/features/about/presentation/pages/about_page.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

class AboutButton extends StatelessWidget {
  const AboutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'About',
      child: SizedBox(
        height: kToolbarHeight,
        width: kToolbarHeight,
        child: InkWell(
          borderRadius: BorderRadius.circular(kToolbarHeight / 2),
          onTap: () => Navigator.pushNamed(context, AboutPage.routeName),
          child: Icon(
            Icons.info_outlined,
            size: kToolbarHeight / 1.5,
            color: context.themeData.textTheme.headline4?.color,
          ),
        ),
      ),
    );
  }
}
