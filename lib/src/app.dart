import 'package:flutter/material.dart';

//* Nuestras importaciones
import 'package:depocut/src/routes/routes.dart';


class MyApp extends StatelessWidget {
  
  @override
  Widget build( context ) { //* El context contiene la informacion del arbol de widgets, informacion el tema, iconos, su padre, heramnos, hijos, nietos, etc.
    // Este Widget permite la configuracion global de la applicacion
    return MaterialApp(
      initialRoute: '/',
      routes: getApplicationRoutes(), // Definimos las rutas de la aplicacion
      onGenerateRoute: (settings) { // Manejamos el error en caso de que no exista alguna ruta
        // TODO: Manejo de las rutas no existentes
      },
    );
  }

}