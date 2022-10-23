import 'package:collatz_conjecture/src/features/license/presentation/widgets/paraghraph_card.dart';
import 'package:collatz_conjecture/src/shared/shared.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

typedef PackageName = String;
typedef LicenseEntries = List<LicenseEntry>;

class LicenseDetailsPage extends StatelessWidget {
  static const routeName = '/license-detail';

  final PackageName packageName;
  final LicenseEntries licenseEntries;

  const LicenseDetailsPage({
    Key? key,
    required this.packageName,
    required this.licenseEntries,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        radius: const Radius.circular(4),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              floating: true,
              leading: const CustomBackButton(),
              title: Text(packageName),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                licenseEntries
                    .map(
                      (licenseEntry) => ParagraphCard(
                        licenseEntry: licenseEntry,
                        pargraphIndex: licenseEntries
                            .indexWhere((element) => element == licenseEntry),
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
