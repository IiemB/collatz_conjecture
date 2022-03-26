import 'package:collatz_conjecture/src/shared/widgets/base_shimmer.dart';
import 'package:flutter/material.dart';

class LicenseListLoading extends StatelessWidget {
  const LicenseListLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        List<Widget>.generate(
          10,
          (index) => const BaseShimmer(
            child: Card(child: ListTile()),
          ),
        ),
      ),
    );
  }
}
