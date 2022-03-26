import 'package:collatz_conjecture/src/features/license/presentation/pages/app_license_page.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class LicenseButton extends StatelessWidget {
  const LicenseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: context.width / 3,
        child: OutlinedButton(
          onPressed: () =>
              Navigator.pushNamed(context, AppLicensesPage.routeName),
          child: const Text('Licenses'),
        ),
      ),
    );
  }
}
