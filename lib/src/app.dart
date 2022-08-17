import 'package:depocut/app/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';

//* Nuestras importaciones
import 'package:depocut/src/pages/home_page.dart';


class MyApp extends StatelessWidget {
  
  @override
  Widget build( context ) { //* El context contiene la informacion del arbol de widgets, informacion el tema, iconos, su padre, heramnos, hijos, nietos, etc.
    // Este Widget permite la configuracion global de la applicacion
    return MaterialApp(
      home: Center(
        child: PageMaps()
      ),
    );
  }

}