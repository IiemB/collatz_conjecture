import 'package:collatz_conjecture/src/features/license/license.dart';
import 'package:collatz_conjecture/src/shared/shared.dart';
import 'package:collatz_conjecture/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLicensesPage extends StatelessWidget {
  static const routeName = '/licenses';
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
                floating: true,
                leading: const CustomBackButton(),
                title: Text(Constanst.string.licenseAppBarTitle),
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
