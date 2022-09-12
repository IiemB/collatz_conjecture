import 'package:collatz_conjecture/src/features/license/license.dart';
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
                    Constanst.string.licenseAppBarTitle,
                    style: context.themeData.textTheme.headline4
                        ?.copyWith(fontWeight: FontWeight.bold),
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
