// ignore_for_file: use_build_context_synchronously

import 'package:collatz_conjecture/src/features/home/presentation/cubit/collatz_number_cubit.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/about_button.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/chart_result.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/collatz_summary.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/fa_button.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/line_chart.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/number_list.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/pie_chart.dart';
import 'package:collatz_conjecture/src/features/theme/presentation/widgets/switch_theme_button.dart';
import 'package:collatz_conjecture/src/utils/constants.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _lastTimeBackButtonWasTapped = 0;
  static const _exitTimeInMillis = 3000;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => kIsWeb ? false : await _handleWillPop(context),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Scrollbar(
            radius: const Radius.circular(4),
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                SliverAppBar(
                  backgroundColor: context.themeData.scaffoldBackgroundColor,
                  floating: true,
                  automaticallyImplyLeading: false,
                  title: Tooltip(
                    message: 'Double tap to see reference',
                    child: GestureDetector(
                      onDoubleTap: () async {
                        final canLaunch =
                            await launch(Constanst.url.collatzReference);

                        if (!canLaunch) {
                          context.showSnackBar(
                            'Failed to open ${Constanst.url.collatzReference}',
                          );
                        }
                      },
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          Constanst.string.appTitle,
                          style: context.themeData.textTheme.headline4
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  actions: const [
                    AboutButton(),
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
                        const NumberListBuilder(),
                        const PieChartBuilder(),
                        const ChartResultBuilder(),
                        const SizedBox.square(
                          dimension: kToolbarHeight * 3 / 2,
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: const FAButton(),
      ),
    );
  }

  Future<bool> _handleWillPop(BuildContext context) async {
    final currentTime = DateTime.now().millisecondsSinceEpoch;

    if ((currentTime - _lastTimeBackButtonWasTapped) < _exitTimeInMillis) {
      context.removeCurrentSnakBar();
      return true;
    } else {
      _lastTimeBackButtonWasTapped = DateTime.now().millisecondsSinceEpoch;
      context.removeCurrentSnakBar();
      context.showSnackBar(
        'Tap back again to exit',
        duration: const Duration(milliseconds: _exitTimeInMillis),
      );
      return false;
    }
  }
}
