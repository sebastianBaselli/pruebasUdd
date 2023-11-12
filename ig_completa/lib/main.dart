import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: const Text(
          'UDD',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Acción al presionar el icono "more_vert"
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: ['Inicio', 'Charts', 'Playlist'].map((String item) {
            return ListTile(
              title: Text(item),
              onTap: () {
                Navigator.pop(context);
                navigateToDetailScreen(context, item);
              },
            );
          }).toList(),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recientemente escuchado',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 132,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  String imageName = '${index + 1}.jpg';
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ImageScreen(imageName: imageName),
                        ),
                      );
                    },
                    child: Container(
                      width: 128,
                      height: 96,
                      margin: const EdgeInsets.only(right: 12),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset('assets/$imageName'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigateToDetailScreen(BuildContext context, String selectedItem) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DetailScreen(selectedItem: selectedItem),
      ),
    );
  }
}

class ImageScreen extends StatelessWidget {
  final String imageName;
  final List<String> artistNames = [
    'Kaleko Urdangak',
    'Brigade Loco',
    'No somos nada',
    'La Polla Records',
    'Kortatu',
    'Kaleko Urdangak',
    'Brigade Loco',
    'No somos nada',
    'La Polla Records',
    'Kortatu',
  ];

  ImageScreen({super.key, required this.imageName});

  @override
  Widget build(BuildContext context) {
    int imageIndex = int.parse(imageName.split('.').first) - 1;
    String artistName = artistNames[imageIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          artistName,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/$imageName'),
            Text('Nombre del artista: $artistName'),
          ],
        ),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final String selectedItem;

  const DetailScreen({super.key, required this.selectedItem});

  @override
  Widget build(BuildContext context) {
    String screenContent = '';

    if (selectedItem == 'Charts') {
      screenContent = 'Yo soy el contenido de Charts';
    } else if (selectedItem == 'Playlist') {
      screenContent = 'Yo soy otra pantalla, soy el playlist';
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          'Detalles de $selectedItem',
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nombre del elemento seleccionado: $selectedItem',
              style: const TextStyle(fontSize: 12),
            ),
            Text(
              screenContent, // Contenido condicional
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}






