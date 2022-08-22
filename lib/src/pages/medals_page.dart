import 'package:flutter/material.dart';

class Medals extends StatelessWidget {
  const Medals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Medallas',
          style: TextStyle(
            color: Colors.black87
          ),
        ),
      ),
    );
  }
}