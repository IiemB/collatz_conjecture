import 'package:collatz_conjecture/src/features/about/about.dart';
import 'package:collatz_conjecture/src/shared/shared.dart';
import 'package:collatz_conjecture/src/utils/assets.gen.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AboutPage extends StatelessWidget {
  static const routeName = '/about';
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AboutCubit()..getAppInfo(),
      child: Scaffold(
        body: Scrollbar(
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
