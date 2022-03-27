import 'package:collatz_conjecture/src/features/license/presentation/pages/app_license_page.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class LicenseButton extends StatelessWidget {
  const LicenseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'License',
      child: SizedBox(
        height: kToolbarHeight,
        width: kToolbarHeight,
        child: InkWell(
          borderRadius: BorderRadius.circular(kToolbarHeight / 2),
          onTap: () => Navigator.pushNamed(context, AppLicensesPage.routeName),
          child: Icon(
            Icons.article_outlined,
            size: kToolbarHeight / 1.5,
            color: context.themeData.textTheme.headline4?.color,
          ),
        ),
      ),
    );
  }
}
