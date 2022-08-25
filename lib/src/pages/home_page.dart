import 'package:depocut/src/components/drawer.dart';
import 'package:flutter/material.dart';

//* Nuestras importaciones
import 'package:depocut/src/components/map_widget.dart';
import 'package:depocut/src/components/bottom_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Definimos que el appbar sea transparente
        elevation: 0,
        leading: Builder( // Realiamos la modificacion del icono del menu lateral
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu), // Definimos el nuevo icono
              color: Colors.black, // Damoos un color al icono
              onPressed: () => Scaffold.of(context).openDrawer(), // Definimo la accion al hacer clic en el boton, es este caso abrir el menu lateral
            );
          },
        ),
      ),
      body: MapWidget(),
      bottomNavigationBar: const BottomAppBarWidget(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: DrawerWidget(),
    );
  }
}