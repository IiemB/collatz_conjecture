import 'package:collatz_conjecture/src/features/home/presentation/cubit/collatz_number_cubit.dart';
import 'package:collatz_conjecture/src/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputDialogue extends StatefulWidget {
  const InputDialogue({Key? key}) : super(key: key);

  @override
  State<InputDialogue> createState() => _InputDialogueState();
}

class _InputDialogueState extends State<InputDialogue> {
  final _inputNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  final _focusNode = FocusNode();

  @override
  void dispose() {
    _inputNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Input number'),
      content: Form(
        key: _formKey,
        child: TextFormField(
          keyboardType: TextInputType.number,
          controller: _inputNumberController,
          focusNode: _focusNode,
          decoration: const InputDecoration(
            hintText: 'Initial number',
            helperText: 'Number must be\ngreater than 0',
          ),
          maxLength: 10,
          maxLengthEnforcement:
              MaxLengthEnforcement.truncateAfterCompositionEnds,
          validator: (value) {
            if (value != null) {
              if (value.isEmpty ||
                  !Validators.isNumericOnly(value) ||
                  value == '0') {
                return 'Invalid number';
              }
            }
            return null;
          },
          onFieldSubmitted: (value) {
            _focusNode.unfocus();
            final _isFormValid = _formKey.currentState?.validate() ?? false;

            if (_isFormValid) {
              Navigator.pop(context);
              BlocProvider.of<CollatzNumberCubit>(context)
                  .processNumber(int.parse(value));
            }
          },
        ),
      ),
    );
  }
}
