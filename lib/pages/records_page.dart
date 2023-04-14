import 'package:flutter/material.dart';

import '../constants.dart';

class RecordsPage extends StatelessWidget {
  final Modo modo;
  final List<String> recs = ['Modo', 'Nivel 8', 'Nivel 10', 'Nivel 12'];

  RecordsPage({super.key, required this.modo});

  getModo() {
    return modo == Modo.normal ? 'Normal' : 'Round 6';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
