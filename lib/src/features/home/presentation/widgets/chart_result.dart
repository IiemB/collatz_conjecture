import 'package:collatz_conjecture/src/features/home/data/models/result_data_model.dart';
import 'package:collatz_conjecture/src/features/home/presentation/cubit/collatz_number_cubit.dart';
import 'package:collatz_conjecture/src/features/home/presentation/widgets/base_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChartResultBuilder extends StatelessWidget {
  const ChartResultBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: BlocBuilder<CollatzNumberCubit, CollatzNumberState>(
        buildWhen: (previous, current) =>
            current is CollatzNumberStateLoading ||
            current is CollatzNumberStateSuccess ||
            current is CollatzNumberStateInitial,
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const SizedBox(),
            initial: (v) => const SizedBox(),
            succees: (v) => ChartResult(resultDataModel: v.result),
            loading: (v) => BaseShimmer(
              child: ChartResult(
                resultDataModel: ResultDataModel(
                  totalSteps: 1,
                  initialNumber: 1,
                  data: [],
                  totalOddNumber: 1,
                  totalEvenNumber: 1,
                  highestNumber: 1,
                  highestNumberAt: 1,
                  highestPerInitial: 1,
                  oddDistribution: 1,
                  evenDistribution: 1,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ChartResult extends StatelessWidget {
  final ResultDataModel resultDataModel;

  const ChartResult({Key? key, required this.resultDataModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            title: const Text(
              'Initial value',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              resultDataModel.initialNumber.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(),
          ListTile(
            title: const Text('Number of step to reach 1'),
            trailing: Text('${resultDataModel.totalSteps} Steps'),
          ),
          const Divider(),
          ListTile(
            title: const Text('Highest value'),
            trailing: Text(resultDataModel.highestNumber.toString()),
          ),
          const Divider(),
          ListTile(
            title: const Text('Largest value reached at'),
            trailing: Text('Step ${resultDataModel.highestNumberAt}'),
          ),
          const Divider(),
          ListTile(
            title: const Text('Number of odd steps'),
            trailing: Text(resultDataModel.totalOddNumber.toString()),
          ),
          const Divider(),
          ListTile(
            title: const Text('Number of even steps'),
            trailing: Text(resultDataModel.totalEvenNumber.toString()),
          ),
          const Divider(),
          ListTile(
            title: const Text('Largest value / Initial value'),
            trailing: Text(
              resultDataModel.highestPerInitial.toString().length >= 4
                  ? resultDataModel.highestPerInitial.toString().substring(0, 4)
                  : resultDataModel.highestPerInitial.toString(),
            ),
          ),
        ],
      ),
    );
  }
}
