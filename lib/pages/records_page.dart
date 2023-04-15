import 'package:flutter/material.dart';
import 'package:memory_game_flutter/theme.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Records'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.separated(itemBuilder: (BuildContext context, int index){
          return index == 0 ?
          Padding(
            padding: const EdgeInsets.only(top: 36, bottom: 24),
            child: Center(
              child: Text(
                'Modo ${getModo()}',
                style: const TextStyle(
                  fontSize: 28,
                  color: Round6Theme.color,
                ),
              ),
            ),
          )
          : ListTile(
            title: Text(recs[index]),
            trailing: const Text('X jugadas'),
            tileColor: Colors.grey[900],
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          );
        },
        itemCount: recs.length,
        separatorBuilder: (_, __) => const Divider(color: Colors.transparent),
      ),
    )
    );
  }
}
