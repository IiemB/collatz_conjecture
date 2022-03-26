import 'package:collatz_conjecture/src/features/license/data/models/license_data_model/licenses_data_model.dart';
import 'package:collatz_conjecture/src/shared/widgets/base_shimmer.dart';
import 'package:flutter/material.dart';

class LicenseList extends StatelessWidget {
  final LicensesDataModel licensesDataModel;
  const LicenseList({Key? key, required this.licensesDataModel})
      : super(key: key);

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
