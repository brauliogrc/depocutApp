import 'package:flutter/material.dart';

//* Nuestras importaciones
import 'package:depocut/src/pages/home_page.dart';
import 'package:depocut/src/pages/medals_page.dart';
import 'package:depocut/src/pages/user_info.dart';

Map<String, WidgetBuilder> getApplicationRoutes () {
  return <String, WidgetBuilder>{
    '/':            ( BuildContext context ) => HomePage(),
    '/usersinfo':   ( BuildContext context ) => const UserInfo(),
    '/madalspage':  ( BuildContext context ) => const Medals(),
  };
}