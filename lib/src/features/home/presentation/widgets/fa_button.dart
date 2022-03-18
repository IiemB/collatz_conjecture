import 'package:collatz_conjecture/src/features/home/presentation/cubit/collatz_number_cubit.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/input_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FAButton extends StatelessWidget {
  const FAButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () async => BlocProvider.of<CollatzNumberCubit>(context).state
              is! CollatzNumberStateSuccess
          ? showDialog(
              context: context,
              builder: (context) => const InputDialogue(),
            )
          : BlocProvider.of<CollatzNumberCubit>(context).resetState(),
      icon: BlocBuilder<CollatzNumberCubit, CollatzNumberState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const Icon(Icons.edit),
            initial: (v) => const Icon(Icons.edit),
            loading: (v) => const Icon(Icons.loop),
            succees: (v) => const Icon(Icons.loop),
          );
        },
      ),
      label: BlocBuilder<CollatzNumberCubit, CollatzNumberState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const Text('Input number'),
            initial: (v) => const Text('Input number'),
            loading: (v) => const Text('Processing'),
            succees: (v) => const Text('Reset'),
          );
        },
      ),
    );
  }
}
