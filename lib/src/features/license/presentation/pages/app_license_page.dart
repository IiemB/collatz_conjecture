import 'package:collatz_conjecture/src/features/license/presentation/cubit/license_cubit.dart';
import 'package:collatz_conjecture/src/features/license/presentation/widgets/licenses_list.dart';
import 'package:collatz_conjecture/src/features/license/presentation/widgets/licenses_list_loading.dart';
import 'package:collatz_conjecture/src/utils/constants.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLicensePage extends StatelessWidget {
  const AppLicensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            title: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                Constanst.string.appTitle,
                style: context.themeData.textTheme.headline4
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          BlocConsumer<LicenseCubit, LicenseState>(
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
    );
  }
}
