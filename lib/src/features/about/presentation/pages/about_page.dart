import 'package:collatz_conjecture/src/features/about/presentation/widgets/app_info_text.dart';
import 'package:collatz_conjecture/src/features/about/presentation/widgets/license_button.dart';
import 'package:collatz_conjecture/src/features/about/presentation/widgets/source_code_button.dart';
import 'package:collatz_conjecture/src/shared/shared.dart';
import 'package:collatz_conjecture/src/utils/assets.gen.dart';
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
              const SliverAppBar(
                floating: true,
                leading: CustomBackButton(),
                title: Text('About'),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Image.asset(
                      Assets.icons.icon.path,
                      fit: BoxFit.contain,
                      height: context.width / 2,
                      filterQuality: FilterQuality.high,
                    ),
                    const SizedBox.square(dimension: 16),
                    const AppInfoText(),
                    const SizedBox.square(dimension: 16),
                    const SourceCodeButton(),
                    const SizedBox.square(dimension: 8),
                    const LicenseButton(),
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
