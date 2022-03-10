import 'package:collatz_conjecture/src/features/home/presentation/pages/home_page.dart';
import 'package:collatz_conjecture/src/features/theme/presentation/widgets/switch_theme_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static const routeName = 'WelcomePage';
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [SwitchThemeButton()],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pushNamed(context, HomePage.routeName),
        label: const Text('Next'),
      ),
    );
  }
}
