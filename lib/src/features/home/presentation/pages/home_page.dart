import 'package:collatz_conjecture/src/features/home/home.dart';
import 'package:collatz_conjecture/src/features/theme/theme.dart';
import 'package:collatz_conjecture/src/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
                  floating: true,
                  automaticallyImplyLeading: false,
                  title: Tooltip(
                    message: 'Double tap to see reference',
                    child: GestureDetector(
                      onDoubleTap: () async {
                        final canLaunch = await launchUrlString(
                          Constanst.url.collatzReference,
                          mode: LaunchMode.externalApplication,
                        );

                        if (!canLaunch) {
                          context.showSnackBar(
                            'Failed to open ${Constanst.url.collatzReference}',
                          );
                        }
                      },
                      child: Text(Constanst.string.appTitle),
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
      context.removeCurrentSnackBar();
      return true;
    } else {
      _lastTimeBackButtonWasTapped = DateTime.now().millisecondsSinceEpoch;
      context.removeCurrentSnackBar();
      context.showSnackBar(
        'Tap back again to exit',
        duration: const Duration(milliseconds: _exitTimeInMillis),
      );
      return false;
    }
  }
}
