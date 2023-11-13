import 'package:flutter/material.dart';
import 'componentes.dart'; // Importa el archivo componentes.dart que contiene CustomCard
import 'package:papa_johns_app/theme.dart';
import 'splashscreen.dart';

void main() {
  runApp(const MyApp());
}
bool switchValue = true; // Define una variable para controlar el estado del interruptor

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(),
      home: const SplashScreen(),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  

  @override
  
  

  
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(

              toolbarHeight: 56, // Altura del AppBar
              backgroundColor: Color(0xff2d5d2b),
              elevation: 0,
              title: const Column( // Usamos el título para los textos
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recoger en Local: Escuela Militar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'FrancoisOne'
                    ),
                  ),
                ],
              ),
            ),

        body: SingleChildScrollView( //Permite eventualemnte desplazarse a un punto x en el scroll.
          child: Column( //será una columna vertical, navegamos verticalmente

            children: [
              const ChipNavigationBar(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 0), // Margen izquierdo y derecho para el TextField
                  child: Container(
                    decoration: BoxDecoration(

                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: const EdgeInsets.all(0),
                    child: const Row(
                      children: [
                        SizedBox(width:16), // Espacio entre el ícono de búsqueda y el TextField
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '¿Qué te apetece hoy?',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              const Divider(//para separar del siguiente container, es horizontal
                height: 8.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),
              

            

 //ACÁ LO DEMÁS

const SizedBox(height:1),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  String imageName = '${index + 1}.png';
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ImageScreen(imageName: imageName),
                        ),
                      );
                    },
                    child: Container(
                      width: 470,
                      height: 200,
                      margin: const EdgeInsets.only(left: 7, right: 7),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('assets/$imageName'),
                      ),
                    ),
                  );
                },
              ),
            ),

            const Text(
              'PROMOCIONES',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'FrancoisOne'
              ),
            ),

const Padding(
  padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
  child: Card1(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),

const Padding(
  padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
  child: Card2(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),

const Padding(
  padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
  child: Card3(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),

const Padding(
  padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
  child: Card4(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),

const Padding(
  padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
  child: Card5(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),

const Padding(
  padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
  child: Card6(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),
        
                ],
           
          ),
        ), // Se cierra el body



      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255), //color de fondo, a mano, luego se puede integrar a flex_color

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu, color: Colors.black), // Icono blanco
              label: 'Menú',
            ),

             BottomNavigationBarItem(
              icon: Icon(Icons.star, color: Colors.black), // Icono blanco
              label: 'Papa Puntos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long, color: Colors.black), // Icono blanco
              label: 'Pedidos',
            ),
               BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Colors.black), // Icono blanco
              label: 'Perfil',
            ),
          ],
          selectedItemColor: Colors.black, // Color del texto seleccionado en blanco
          unselectedItemColor: const Color.fromARGB(255, 103, 102, 102), // Color de íconos no seleccionados


        ),
      ),//Se cierra SCaffold
    );//Se cierra MaterialApp
  }//Se cierra el Widget Build contexts
}// se cierra la clase

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