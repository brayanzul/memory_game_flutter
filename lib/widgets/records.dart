import 'package:flutter/material.dart';
import 'package:memory_game_flutter/pages/records_page.dart';
import 'package:memory_game_flutter/theme.dart';

import '../constants.dart';

class Records extends StatefulWidget {
  const Records({super.key});

  @override
  State<Records> createState() => _RecordsState();
}

class _RecordsState extends State<Records> {
  showRecords(Modo modo) async {
    await Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (BuildContext context) => RecordsPage(modo: modo),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'Records',
                style: TextStyle(
                  color: Round6Theme.color,
                  fontSize: 22,
                ),
              ),
            ),
            ListTile(
              title: const Text('Modo Normal'),
              trailing: const Icon(Icons.chevron_right),
              onTap: showRecords(Modo.normal),
            ),
            ListTile(
              title: const Text('Modo Round 6'),
              trailing: const Icon(Icons.chevron_right),
              onTap: showRecords(Modo.round6),
            ),
          ],
        ),
      ),
    );
  }
}
