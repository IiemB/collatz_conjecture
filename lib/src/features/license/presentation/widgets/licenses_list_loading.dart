import 'package:collatz_conjecture/src/features/license/presentation/widgets/app_name_text.dart';
import 'package:collatz_conjecture/src/shared/widgets/base_shimmer.dart';
import 'package:flutter/material.dart';

class LicenseListLoading extends StatelessWidget {
  const LicenseListLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        const AppNameText(),
        BaseShimmer(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: List<Widget>.generate(
              20,
              (index) => const Card(
                child: ListTile(
                  title: Text('packageName'),
                  subtitle: Text('Licenses'),
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
