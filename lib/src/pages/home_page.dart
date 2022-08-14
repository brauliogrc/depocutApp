import 'package:flutter/material.dart';

//* Nuestras importaciones

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'Title' ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text( 'Hellow mother fuker' )
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container( height: 55.0 ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              child: Text( 'Drawer header' ),
            ),
            ListTile(
              title: const Text( 'Item 1' ),
              onTap: () => { Navigator.pop(context) },
            ),
            ListTile(
              title: const Text( 'Item 2' ),
              onTap: () => { Navigator.pop(context) },
              
            ),
            ListTile(
              title: const Text( 'Item 3' ),
              onTap: () => { Navigator.pop(context) },
            ),
            ListTile(
              title: const Text( 'Item 4' ),
              onTap: () => { Navigator.pop(context) },
            ),
          ],
        ),
      ),
    );
  }
}