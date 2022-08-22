import 'package:flutter/material.dart';

//* Nuestras importaciones
import 'package:depocut/src/components/map_widget.dart';
import 'package:depocut/src/components/bottom_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapWidget(),
      bottomNavigationBar: const BottomAppBarWidget(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}