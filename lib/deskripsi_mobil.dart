import 'package:flutter/material.dart';
import 'package:rental_app/daftar_mobil.dart';

class DeskripsiMobil extends StatefulWidget {
  const DeskripsiMobil({super.key});

  @override
  _DeskripsiMobilState createState() => _DeskripsiMobilState();
}

class _DeskripsiMobilState extends State<DeskripsiMobil> {
  String selectedPrice = '1 Hari'; 

  @override
  Widget build(BuildContext context) {
    final Car car = ModalRoute.of(context)!.settings.arguments as Car;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Deskripsi Mobil'),
        backgroundColor: const Color.fromARGB(255, 97, 103, 122),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const SizedBox(height: 16),
            Text(
              car.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Container(
              height: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(car.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Pilih Harga Sewa',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedPrice = '1 Hari';
                          });
                        },
                        child: Card(
                          color: selectedPrice == '1 Hari'
                              ? Colors.black
                              : Colors.white,
                          elevation: selectedPrice == '1 Hari' ? 5.0 : 0.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  '1 Hari',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: selectedPrice == '1 Hari'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  car.price1Hari,
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: selectedPrice == '1 Hari'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedPrice = '1 Bulan';
                          });
                        },
                        child: Card(
                          color: selectedPrice == '1 Bulan'
                              ? Colors.black
                              : Colors.white,
                          elevation: selectedPrice == '1 Bulan' ? 5.0 : 0.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  '1 Bulan',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: selectedPrice == '1 Bulan'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  car.price,
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: selectedPrice == '1 Bulan'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedPrice = '6 Bulan';
                          });
                        },
                        child: Card(
                          color: selectedPrice == '6 Bulan'
                              ? Colors.black
                              : Colors.white,
                          elevation: selectedPrice == '6 Bulan' ? 5.0 : 0.0,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Text(
                                  '6 Bulan',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: selectedPrice == '6 Bulan'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  car.price6Bulan,
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: selectedPrice == '6 Bulan'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Deskripsi',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    car.description,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Informasi Kontak',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Nama Perusahaan Rental: Zecho Organizer \nAlamat: Jl. Ahmad Yani, Lowokwaru, Malang, Jawa Timur \nNomor Telepon: 085234786299 \nEmail: ZechoOrganizer@Gmail.com',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: ElevatedButton(
            onPressed: () {
              _showSuccessDialog();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.black, 
              elevation: 10.0, 
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
            ),
            child: const Text(
              'Rental Sekarang',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Booking Berhasil!'),
          content: const Text('Terima kasih atas pemesanan Anda.'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
