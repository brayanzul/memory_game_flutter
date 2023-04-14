import 'package:flutter/material.dart';
import 'package:memory_game_flutter/theme.dart';
import 'package:memory_game_flutter/widgets/logo.dart';
import 'package:memory_game_flutter/widgets/records.dart';
import 'package:memory_game_flutter/widgets/start_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Logo(),
            StartButton(
              title: 'Modo Normal', 
              color: Colors.white, 
              action: () {}
            ),
            StartButton(
              title: 'Modo Round 6', 
              color: Round6Theme.color, 
              action: () {}
            ),
            const SizedBox(height: 60),
            const Records(),
          ],
        ),
      ),
    );
  }
}