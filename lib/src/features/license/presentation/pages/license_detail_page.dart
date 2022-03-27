import 'package:collatz_conjecture/src/features/license/presentation/widgets/paraghraph_card.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Scrollbar(
          radius: const Radius.circular(4),
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
                    packageName,
                    style: context.themeData.textTheme.headline4
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
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
      ),
    );
  }
}
