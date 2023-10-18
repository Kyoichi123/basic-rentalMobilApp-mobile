import 'package:flutter/material.dart';
import 'package:rental_app/daftar_mobil.dart';
import 'package:rental_app/deskripsi_mobil.dart';

class MenuUtama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rental App',
      initialRoute: '/',
      routes: {
        '/': (context) => MainMenu(),
        '/daftar_mobil': (context) =>
             MyHomePage(), 
        '/deskripsi_mobil': (context) => const DeskripsiMobil(),
      },
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/menu.jpg', 
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 22.0), 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Container(
              width: 260.0, 
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyHomePage()), 
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 255, 255, 255), 
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),
        ],
      ),
    );
  }
}