import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero, // TODO: Investigar que es lo que hace
        children: <Widget>[
          const DrawerHeader( // Establece una cabecera en el menu lateral
            decoration: BoxDecoration( // TODO: Investigar que es lo que hace
              color: Colors.blue,
            ), 
            child: Text(
              'Bienvenido a depocut \{\{user name\}\}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.area_chart_outlined), // Definimos el icono mostrado del lado izquierdo del elemento
            trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.deepPurpleAccent,), // Definimos el icono mostrado del lado derecho del elemento
            title: const Text('Estadisticas'), // Definimos le texto del elemento
            onTap: () {
              Navigator.pushNamed(context, '/statisticspage');
            },
          ),
          ListTile(
            leading: const Icon(Icons.storage),
            trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.deepPurpleAccent,),
            title: const Text('Registros'),
            onTap: () {
              Navigator.pushNamed(context, '/recordspage');
            },
          ),
          ListTile(
            leading: const Icon(Icons.logo_dev),
            trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.deepPurpleAccent,),
            title: const Text('Desarrolladores'),
            onTap: () {
              Navigator.pushNamed(context, '/developerspage');
            },
          ),
          const Divider(), // Muesta una linea divisora
          const ListTile(
            title: Text(
              'Funcionalidades en desarrollo',
              style: TextStyle(fontWeight: FontWeight.bold), // Colocamos las letras en negritas
            ),
          ),
          const ListTile(
            leading: const Icon(Icons.directions_run),
            trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.deepPurpleAccent,),
            title: const Text('Step counter'),
          ),
          const ListTile(
            leading: const Icon(Icons.roundabout_right),
            trailing: const Icon(Icons.keyboard_arrow_right, color: Colors.deepPurpleAccent,),
            title: const Text('Trazado de ruta'),
          ),
        ],
      ),
    );
  }
}