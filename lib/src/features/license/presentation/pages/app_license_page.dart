import 'package:collatz_conjecture/src/features/license/presentation/cubit/license_cubit.dart';
import 'package:collatz_conjecture/src/features/license/presentation/widgets/licenses_list.dart';
import 'package:collatz_conjecture/src/features/license/presentation/widgets/licenses_list_loading.dart';
import 'package:collatz_conjecture/src/utils/constants.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLicensesPage extends StatelessWidget {
  static const routeName = '/appLicensesPage';
  const AppLicensesPage({Key? key}) : super(key: key);

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
                    Constanst.string.licenseAppBarTitle,
                    style: context.themeData.textTheme.headline4
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(kToolbarHeight),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: kToolbarHeight / 4,
                    ),
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Column(
                        children: [
                          Text(
                            Constanst.string.appTitle,
                            style: context.themeData.textTheme.headline4,
                          ),
                          const Text('Powered by Flutter')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              BlocConsumer<LicenseCubit, LicenseState>(
                bloc: BlocProvider.of<LicenseCubit>(context)..getLicense(),
                listener: (context, state) {
                  state.maybeMap(
                    orElse: () {},
                    error: (v) => context.showSnackBar(
                      v.failure.message ?? v.failure.toString(),
                    ),
                  );
                },
                builder: (context, state) => state.maybeMap(
                  orElse: () => const LicenseListLoading(),
                  loaded: (v) => LicenseList(licensesDataModel: v.licensesData),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
