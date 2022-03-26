import 'package:collatz_conjecture/src/features/home/presentation/cubit/collatz_number_cubit.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/chart_result.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/collatz_summary.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/fa_button.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/license_button.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/line_chart.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/pie_chart.dart';
import 'package:collatz_conjecture/src/features/theme/presentation/widgets/switch_theme_button.dart';
import 'package:collatz_conjecture/src/utils/constants.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTime _backButtonPressTime = DateTime.now();

  static const _snackBarDuration = Duration(seconds: 3);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => await _handleWillPop(context),
      child: Scaffold(
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
              actions: const [
                SwitchThemeButton(),
              ],
            ),
            BlocConsumer<CollatzNumberCubit, CollatzNumberState>(
              listener: (context, state) {
                state.maybeMap(
                  orElse: () {},
                  error: (v) => context.showSnackBar(
                    v.failure.message ?? v.failure.toString(),
                  ),
                );
              },
              buildWhen: (previous, current) =>
                  current is CollatzNumberStateLoading ||
                  current is CollatzNumberStateSuccess ||
                  current is CollatzNumberStateInitial,
              builder: (context, state) => state.maybeMap(
                initial: (v) => const CollatzSummary(),
                orElse: () => SliverList(
                  delegate: SliverChildListDelegate([
                    const LineChartBuilder(),
                    const PieChartBuilder(),
                    const ChartResultBuilder(),
                    const LicenseButton(),
                    const SizedBox.square(dimension: kToolbarHeight * 3 / 2),
                  ]),
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: const FAButton(),
      ),
    );
  }

  Future<bool> _handleWillPop(BuildContext context) async {
    final now = DateTime.now();
    final backButtonHasNotBeenPressedOrSnackBarHasBeenClosed =
        now.difference(_backButtonPressTime) > _snackBarDuration;

    if (backButtonHasNotBeenPressedOrSnackBarHasBeenClosed) {
      _backButtonPressTime = now;
      context.showSnackBar(
        'Tap back again to exit',
        duration: _snackBarDuration,
      );
      return false;
    }

    return true;
  }
}
