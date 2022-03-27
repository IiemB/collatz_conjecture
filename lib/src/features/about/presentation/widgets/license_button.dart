import 'package:collatz_conjecture/src/features/license/presentation/pages/app_license_page.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:collatz_conjecture/src/utils/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class LicenseButton extends StatelessWidget {
  const LicenseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: context.width / 2,
        child: OutlinedButton.icon(
          onPressed: () =>
              Navigator.pushNamed(context, AppLicensesPage.routeName),
          icon: const Icon(MyFlutterApp.license),
          label: const Text('Licenses'),
        ),
      ),
    );
  }
}
