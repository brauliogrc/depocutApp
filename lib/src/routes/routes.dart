import 'package:flutter/material.dart';

//* Nuestras importaciones
import 'package:depocut/src/pages/home_page.dart';
import 'package:depocut/src/pages/medals_page.dart';
import 'package:depocut/src/pages/user_info_page.dart';
import 'package:depocut/src/pages/developers_page.dart';
import 'package:depocut/src/pages/records_page.dart';
import 'package:depocut/src/pages/statistics_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes () {
  return <String, WidgetBuilder>{
    '/':                ( BuildContext context ) => HomePage(),
    '/usersinfo':       ( BuildContext context ) => const UserInfo(),
    '/madalspage':      ( BuildContext context ) => const Medals(),
    '/statisticspage':  ( BuildContext context ) => const StatisticsPage(),
    '/recordspage':     ( BuildContext context ) => const RecordsPage(),
    '/developerspage':  ( BuildContext context ) => const DevelopersPage(),

  };
}