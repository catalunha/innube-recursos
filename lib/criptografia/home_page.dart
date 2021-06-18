import 'package:flutter/material.dart';
import 'package:recursos/criptografia/decriptar.dart';
import 'package:recursos/criptografia/encriptar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final tabs = [
      Encriptar(),
      Decriptar(),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('InNube - Recursos'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.2),
        // selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          print(index);
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_outline), label: 'Encriptar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_open), label: 'Decriptar')
        ],
      ),
      body: tabs[selectedIndex],
    );
  }
}
