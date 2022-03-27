import 'package:collatz_conjecture/src/features/home/presentation/cubit/collatz_number_cubit.dart';
import 'package:collatz_conjecture/src/shared/widgets/base_shimmer.dart';
import 'package:collatz_conjecture/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NumberListBuilder extends StatefulWidget {
  const NumberListBuilder({Key? key}) : super(key: key);

  @override
  State<NumberListBuilder> createState() => _NumberListBuilderState();
}

class _NumberListBuilderState extends State<NumberListBuilder> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollatzNumberCubit, CollatzNumberState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () => const SizedBox(),
          initial: (v) => const SizedBox(),
          loading: (v) => BaseShimmer(
            child: BaseShimmer(
              child: _NumberList(
                numbers: List<int>.generate(10, (index) => index),
              ),
            ),
          ),
          succees: (v) => _NumberList(
            numbers: v.result.data.map((e) => e.y).toList(),
          ),
        );
      },
    );
  }
}

class _NumberList extends StatelessWidget {
  final List<int> numbers;
  const _NumberList({Key? key, required this.numbers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 6,
      child: Card(
        child: Scrollbar(
          radius: const Radius.circular(4),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return _NumberContainer(
                currentNumber: numbers[index],
                isFirstIndex: numbers[index] == numbers.first,
                previousNumber:
                    numbers[index] == numbers.first ? null : numbers[index - 1],
              );
            },
          ),
        ),
      ),
    );
  }
}

class _NumberContainer extends StatelessWidget {
  final int? previousNumber;
  final int currentNumber;
  final bool isFirstIndex;

  const _NumberContainer({
    Key? key,
    required this.currentNumber,
    required this.isFirstIndex,
    required this.previousNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        currentNumber.isOdd
            ? const Expanded(child: SizedBox())
            : const SizedBox(),
        Tooltip(
          message: isFirstIndex
              ? 'Initial number'
              : getTooltip(previousNumber ?? currentNumber),
          child: Container(
            height: context.height / 12,
            width: context.height / 12,
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(
                color: context.themeData.colorScheme.primary,
                width: 3,
              ),
              shape: BoxShape.circle,
            ),
            child: FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(currentNumber.toString()),
              ),
            ),
          ),
        ),
        currentNumber.isEven
            ? const Expanded(child: SizedBox())
            : const SizedBox(),
      ],
    );
  }

  String getTooltip(int previousNumber) {
    if (previousNumber.isOdd) {
      return '$previousNumber * 3 + 1';
    } else {
      return '$previousNumber / 2';
    }
  }
}
