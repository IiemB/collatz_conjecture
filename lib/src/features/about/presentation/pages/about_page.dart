import 'package:collatz_conjecture/src/features/about/presentation/widgets/app_info_text.dart';
import 'package:collatz_conjecture/src/features/about/presentation/widgets/license_button.dart';
import 'package:collatz_conjecture/src/features/about/presentation/widgets/source_code_button.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const routeName = '/about';
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Scrollbar(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                floating: true,
                leading: IconButton(
                  tooltip: 'Back',
                  onPressed: () => Navigator.pop(context),
                  icon: Icon(
                    Icons.arrow_back,
                    color: context.themeData.textTheme.headline4?.color,
                  ),
                ),
                title: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    'About',
                    style: context.themeData.textTheme.headline4
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  const [
                    AppInfoText(),
                    SizedBox.square(dimension: 16),
                    SourceCodeButton(),
                    SizedBox.square(dimension: 8),
                    LicenseButton(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
