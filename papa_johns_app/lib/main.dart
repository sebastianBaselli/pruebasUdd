import 'package:flutter/material.dart';
import 'componentes.dart'; // Importa el archivo componentes.dart que contiene CustomCard
import 'package:papa_johns_app/theme.dart';

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
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0), // Margen izquierdo y derecho para el TextField
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
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 12, 0), // Margen derecho para el ícono de filtro
                          child: Icon(Icons.tune, color: Colors.black),
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

const Padding(
  padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
  child: Card2(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),

const Padding(
  padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
  child: Card1(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),

const Padding(
  padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
  child: Card1(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),
        
                ],
           
          ),
        ), // Se cierra el body



      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255), //color de fondo, a mano, luego se puede integrar a flex_color

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.black), // Icono blanco
              label: 'Home',
            ),

             BottomNavigationBarItem(
              icon: Icon(Icons.storefront_outlined, color: Colors.black), // Icono blanco
              label: 'Grocery',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.manage_search, color: Colors.black), // Icono blanco
              label: 'Search',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.black), // Icono blanco
              label: 'Chart',
            ),
               BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, color: Colors.black), // Icono blanco
              label: 'Account',
            ),
          ],
          selectedItemColor: Colors.black, // Color del texto seleccionado en blanco
          unselectedItemColor: const Color.fromARGB(255, 103, 102, 102), // Color de íconos no seleccionados


        ),
      ),//Se cierra SCaffold
    );//Se cierra MaterialApp
  }//Se cierra el Widget Build contexts
}// se cierra la clase

