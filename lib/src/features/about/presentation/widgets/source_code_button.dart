import 'package:collatz_conjecture/src/utils/constants.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:collatz_conjecture/src/utils/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SourceCodeButton extends StatelessWidget {
  const SourceCodeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: context.width / 2,
        child: ElevatedButton.icon(
          onPressed: () async {
            final canLaunch = await launchUrlString(Constanst.url.sourceCode);

            if (!canLaunch) {
              context
                  .showSnackBar('Failed to open ${Constanst.url.sourceCode}');
            }
          },
          icon: const Icon(MyFlutterApp.github),
          label: const Text('Source code'),
        ),
      ),
    );
  }
}
