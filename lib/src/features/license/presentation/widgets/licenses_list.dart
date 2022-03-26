import 'package:collatz_conjecture/src/features/license/data/models/license_data_model/licenses_data_model.dart';
import 'package:collatz_conjecture/src/features/license/presentation/pages/license_detail_page.dart';
import 'package:flutter/material.dart';

class LicenseList extends StatelessWidget {
  final LicensesDataModel licensesDataModel;
  const LicenseList({Key? key, required this.licensesDataModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate(
        licensesDataModel.packages
            .asMap()
            .entries
            .map<Widget>((MapEntry<int, String> entry) {
          final packageName = entry.value;
          // final int index = entry.key;
          final bindings =
              licensesDataModel.packageLicenseBindings[packageName]!;
          return Card(
            child: ListTile(
              title: Text(packageName),
              subtitle: Text(
                '${bindings.length} ${bindings.length > 1 ? 'Licenses' : 'License'}',
              ),
              onTap: () async {
                final licenseEntrys =
                    bindings.map((i) => licensesDataModel.licenses[i]).toList();

                Navigator.pushNamed(
                  context,
                  LicenseDetailsPage.routeName,
                  arguments: <String, dynamic>{
                    'packageName': packageName,
                    'licenseEntries': licenseEntrys,
                  },
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
