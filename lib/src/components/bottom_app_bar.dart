import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatefulWidget {
  const BottomAppBarWidget({super.key});

  @override
  State<BottomAppBarWidget> createState() => _BottomAppBarWidgetState();
}

class _BottomAppBarWidgetState extends State<BottomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar( // Barra creada en la parte inferior de la pantalla
      shape: const CircularNotchedRectangle(), // Fefinimos la forma de la barra, en este caso se crea un relieve por debajo el FloatingActionButton
      color: Colors.blue,
      child: SizedBox( // Es unamjor opción que usar Container
        height: 60, // Indica el alto de la barra
        child: IconTheme(
          data: IconThemeData( color: Theme.of(context).colorScheme.onPrimary ),
          child: Row(
            children: bottomAppBarButtons(),
          ),
        ),
      ),
    );
  }

  List<Widget> bottomAppBarButtons() {
    return <Widget>[
      IconButton(
        tooltip: 'Menú lateral',
        icon: const Icon(Icons.menu),
        onPressed: () {
          
        },
      ),
      const Spacer(), // Genera un espacio personalizado entre los elementos. En caso de no indicar la propiedad "flex" colocalos elementos hasta el otro extremo
      IconButton(
        tooltip: 'Información del usuario', // Mensaje que se muestra al dejar presionado el botón
        icon: const Icon(Icons.person),
        onPressed: () {
          Navigator.pushNamed(context, '/usersinfo'); // Implementamos la navegacon con name routes
        },
      ),
      IconButton(
        tooltip: 'Medallas',
        icon: const Icon(Icons.adjust),
        onPressed: () {
          Navigator.pushNamed(context, '/madalspage');
        },
      ),
    ];
  }
}