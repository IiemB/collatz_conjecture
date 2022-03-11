import 'package:collatz_conjecture/src/features/home/presentation/widgets/chart_result.dart';
import 'package:collatz_conjecture/src/features/theme/presentation/widgets/switch_theme_button.dart';
import 'package:collatz_conjecture/src/utils/validators.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeName = 'HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _inputNumberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _inputNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Collatz Conjecture'),
        actions: const [SwitchThemeButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: _inputNumberController,
                decoration: const InputDecoration(
                  hintText: 'Input number',
                  labelText: 'Input number',
                ),
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
                  final _isFormValid =
                      _formKey.currentState?.validate() ?? false;
                },
              ),
            ),
            const Expanded(child: Card(child: SizedBox(child: ChartResult()))),
          ],
        ),
      ),
    );
  }
}
