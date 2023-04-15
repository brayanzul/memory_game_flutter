import 'package:flutter/material.dart';
import 'package:memory_game_flutter/constants.dart';

import '../widgets/card_nivel.dart';

class NivelPage extends StatelessWidget {
  final Modo modo;

  const NivelPage({super.key, required this.modo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nivel del Juego'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 48),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          padding: const EdgeInsets.all(24),
          children: [
            CardNivel(modo: modo, nivel:6),
            CardNivel(modo: modo, nivel:8),
            CardNivel(modo: modo, nivel:12),
          ],
        ),
      ),
    );
  }
}
