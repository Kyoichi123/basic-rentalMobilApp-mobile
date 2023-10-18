import 'package:flutter/material.dart';
import 'package:rental_app/deskripsi_mobil.dart';

void main() {
  runApp(MyApp());
}

class Car {
  final String image;
  final String name;
  final String price;
  final String description;
  final String price1Hari;
  final String price6Bulan;
  final String merek;

  Car(this.image, this.name, this.price, this.description, this.price1Hari,
      this.price6Bulan, this.merek);
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/daftar_mobil',
      routes: {
        '/daftar_mobil': (context) => MyHomePage(),
        '/deskripsi_mobil': (context) => const DeskripsiMobil(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Car> cars = [
    Car(
      'assets/images/car1.jpg',
      'Honda Civic',
      'Rp1.815.000',
      'Honda Civic adalah mobil kompak yang sangat populer dengan performa yang luar biasa.',
      'Rp440.000',
      'Rp12.350.000',
      'Honda',
      // 'assets/images/honda.png',
    ),
    Car(
      'assets/images/car2.jpg',
      'Land Rover Evoque',
      'Rp1.430.000',
      'Land Rover Evoque adalah SUV mewah dengan desain elegan dan fitur canggih.',
      'Rp320.000',
      'Rp9.310.000',
      'Jaguar',
      // 'assets/images/jaguar.png',
    ),
    Car(
      'assets/images/car3.png',
      'Mercedes Benz SLS',
      'Rp1.475.000',
      'Mercedes Benz SLS adalah mobil sport yang menggabungkan gaya dan kecepatan.',
      'Rp470.000',
      'Rp7.360.000',
      'Mercedes',
      // 'assets/images/marcendes.png',
    ),
    Car(
      'assets/images/car4.jpg',
      'Audi A6',
      'Rp1.750.000',
      'Audi A6 2018 adalah sedan premium dengan teknologi terbaru.',
      'Rp810.000',
      'Rp6.349.000',
      'Audi',
      // 'assets/images/audi.png',
    ),
    Car(
      'assets/images/car5.jpg',
      'Jaguar XF',
      'Rp1.740.000',
      'Jaguar XF adalah sedan mewah dengan kenyamanan dan performa yang luar biasa.',
      'Rp632.000',
      'Rp14.345.000',
      'Jaguar',
      // 'assets/images/jaguar.png',
    ),
    Car(
      'assets/images/car6.jpg',
      'BMW E-1',
      'Rp1.950.000',
      'BMW E-1 adalah mobil listrik dengan gaya dan efisiensi tinggi.',
      'Rp210.000',
      'Rp12.345.000',
      'BMW',
      // 'assets/images/BMW.jpeg',
    ),
    Car(
      'assets/images/car7.png',
      'Rocky',
      'Rp1.250.000',
      'Rocky adalah SUV yang tangguh dan andal, dengan kemampuan off-road yang hebat dan kenyamanan dalam     berkendara.',
      'Rp215.000',
      'Rp2.345.000',
      'Daihatsu',
      // 'assets/images/daihatsu.jpeg',
    ),
    Car(
      'assets/images/car8.png',
      'Xenia',
      'Rp350.000',
      'Xenia adalah mobil MPV yang sangat populer, cocok untuk keluarga dengan desain yang luas dan nyaman.',
      'Rp267.000',
      'Rp4.395.000',
      'Daihatsu',
      // 'assets/images/daihatsu.jpeg',
    ),
    Car(
      'assets/images/car9.jpg',
      'HR-V',
      'Rp637.000',
      'HR-V adalah SUV kompak yang menggabungkan gaya sporty dengan efisiensi bahan bakar yang baik dan teknologi canggih.',
      'Rp343.000',
      'Rp10.305.000',
      'Honda',
      // 'assets/images/honda.png',
    ),
    Car(
      'assets/images/car10.jpg',
      'Brio',
      'Rp760.000',
      'Brio adalah mobil hatchback kompak yang ideal untuk mobilitas perkotaan, dengan manuverabilitas tinggi dan konsumsi bahan bakar yang hemat.',
      'Rp467.000',
      'Rp8.950.000',
      'Honda',
      // 'assets/images/honda.png',
    ),
    Car(
      'assets/images/car11.jpg',
      'Lamborghini',
      'Rp3.950.000',
      'Lamborghini adalah merek mobil super mewah yang terkenal dengan desain futuristik dan performa luar biasa.',
      'Rp920.000',
      'Rp16.705.000',
      'Lamborghini',
      // 'assets/images/lamborghini.jpeg',
    ),
    Car(
      'assets/images/car12.png',
      'Ferrari',
      'Rp4.790.000',
      'Ferrari adalah produsen mobil sport terkenal yang dikenal karena desain yang ikonik dan mesin bertenaga tinggi.',
      'Rp547.000',
      'Rp15.870.000',
      'Ferrari',
      // 'assets/images/ferrari.png',
    ),
    Car(
      'assets/images/car13.jpeg',
      'Alpard',
      'Rp6.780.000',
      'Alpard adalah mobil MPV premium yang menawarkan kenyamanan tingkat tinggi dan teknologi canggih.',
      'Rp610.000',
      'Rp12.700.000',
      'Toyota',
      // 'assets/images/toyota.jpeg',
    ),
    Car(
      'assets/images/car14.png',
      'Rush',
      'Rp250.000',
      'Rush adalah SUV kompak yang cocok untuk petualangan, dengan kemampuan off-road yang baik dan ruang kargo yang luas.',
      'Rp100.000',
      'Rp3.945.000',
      'Toyota',
      // 'assets/images/toyota.jpeg',
    ),
    Car(
      'assets/images/car15.jpg',
      'Mini Copper',
      'Rp1.255.000',
      'Mini Cooper adalah mobil kecil dengan gaya retro yang khas, namun memiliki performa yang mengagumkan dan manuverabilitas yang hebat.',
      'Rp530.000',
      'Rp5.390.000',
      'BMW',
      // 'assets/images/BMW.jpeg',
    ),
  ];
  final List<String> carImages = [
    'assets/images/ALL.png',
    'assets/images/audi.png',
    'assets/images/BMW.png',
    'assets/images/daihatsu.png',
    'assets/images/lamborghini.png',
    'assets/images/marcedes.png',
    'assets/images/toyota.png',
    'assets/images/jaguar.png',
    'assets/images/ferrari.png',
    'assets/images/honda.png',
  ];

  final List<String> carBrands = [
    'Semua Merek',
    'Audi',
    'BMW',
    'Daihatsu',
    'Lamborghini',
    'Mercedes',
    'Toyota',
    'Jaguar',
    'Ferrari',
    'Honda',
  ];
  String selectedBrand = '';
  void showCarsByBrand(String brand) {
    setState(() {
      selectedBrand = brand == 'Semua Merek' ? '' : brand;
    });
  }

  List<Car> searchResults = [];
  String searchQuery = '';

  void performSearch(String query) {
    final lowercaseQuery = query.toLowerCase();
    searchResults = cars.where((car) {
      final lowercaseName = car.name.toLowerCase();
      return lowercaseName.contains(lowercaseQuery);
    }).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        Image.asset(
          'assets/images/bg1.jpg', // Path gambar latar belakang
          width: 500,
          height: 300,
          fit: BoxFit.cover,
        ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                        ),
                        SizedBox(width: 7),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi Anda',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Lowokwaru, Malang',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 23,
                      backgroundImage: AssetImage(
                          'assets/images/profil.jpg'), // Ganti dengan path gambar profil Anda
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Cari mobil',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
                performSearch(value);
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(7),
            child: Text(
              'Pilih Merk Mobil :',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            height: 80, 
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: carImages.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    showCarsByBrand(carBrands[index]);
                  },
                  child: Container(
                    margin: const EdgeInsets.all(4),
                    width: 80, 
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: selectedBrand == carBrands[index]
                            ? Colors.black
                            : Colors.transparent,
                        width: 5,
                      ),
                    ),
                    child: Image.asset(carImages[index]),
                  ),
                );
              },
            ),
          ),

          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 231, 231, 231),
              child: ListView.builder(
                itemCount:
                    searchQuery.isEmpty ? cars.length : searchResults.length,
                itemBuilder: (BuildContext context, int index) {
                  final car =
                      searchQuery.isEmpty ? cars[index] : searchResults[index];
                  const textStyle = TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 255, 254, 254),
                    shadows: [
                      Shadow(offset: Offset(1, 1), color: Colors.black)
                    ],
                  );
                  return selectedBrand.isEmpty || car.merek == selectedBrand
                      ? InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/deskripsi_mobil',
                              arguments: car,
                            );
                          },
                          child: ClipRRect(
                            child: Card(
                              elevation: 10.0,
                              margin: const EdgeInsets.all(17.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    car.image,
                                    width: double.infinity,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                
                                  Container(
                                    color: const Color.fromARGB(255, 25, 27, 30),
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          car.name,
                                          style: const TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            shadows: [
                                              Shadow(
                                                offset: Offset(1, 1),
                                                color: Colors.black,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Row(
                                          children: [
                                            Text(
                                              car.price1Hari,
                                              style: textStyle,
                                            ),
                                            const SizedBox(width: 4),
                                            const Expanded(
                                              child: Text(
                                                '/Hari',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white,
                                                  shadows: [
                                                    Shadow(
                                                      offset: Offset(1, 1),
                                                      color: Colors.black,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : const SizedBox.shrink();
                },
              ),
            ),
          ),
        ],
      ),
      ],
    ),
    );
  }
}
