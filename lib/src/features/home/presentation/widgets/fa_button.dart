import 'package:collatz_conjecture/src/features/home/home.dart';
import 'package:collatz_conjecture/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FAButton extends StatelessWidget {
  const FAButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollatzNumberCubit, CollatzNumberState>(
      builder: (context, state) {
        return FloatingActionButton(
          tooltip: state.mapOrNull<String>(
            initial: (value) => 'Input number',
            loading: (value) => 'Processing',
            succees: (value) => 'Reset',
          ),
          onPressed: () => state.mapOrNull(
            initial: (value) async => await showDialog<int>(
              context: context,
              builder: (context) => const InputDialogue(),
            ).then(
              (value) => value == null
                  ? null
                  : BlocProvider.of<CollatzNumberCubit>(context)
                      .processNumber(value),
            ),
            succees: (v) =>
                BlocProvider.of<CollatzNumberCubit>(context).resetState(),
          ),
          child: state.maybeMap(
            orElse: () => const Icon(Icons.add),
            initial: (v) => const Icon(Icons.add),
            loading: (v) => CircularProgressIndicator(
              color: context.themeData.colorScheme.onPrimary,
            ),
            succees: (v) => const Icon(Icons.loop),
          ),
        );
      },
    );
  }
}
