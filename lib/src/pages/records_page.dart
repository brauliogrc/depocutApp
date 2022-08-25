import 'package:flutter/material.dart';

class RecordsPage extends StatelessWidget {
  const RecordsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Registros',
          style: TextStyle(
            color: Colors.black87
          ),
        ),
      ),
    );
  }
}