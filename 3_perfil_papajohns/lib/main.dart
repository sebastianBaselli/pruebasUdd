import 'package:flutter/material.dart';
import 'items.dart'; // Importa el archivo componentes.dart que contiene CustomCard
import 'package:perfil/theme.dart';

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
              backgroundColor: Color(0xffffffff),
              elevation: 0,
              title: const Column( // Usamos el título para los textos
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MI PERFIL',
                    style: TextStyle(
                      color: Color(0xff2d5d2b),
                      fontSize: 25,
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
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0), // Margen izquierdo y derecho para el TextField
                  child: Container(
                    decoration: BoxDecoration(

                      color: const Color.fromARGB(255, 236, 236, 236),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    margin: const EdgeInsets.all(0),
                    
                  ),
                ),
              const Divider(//para separar del siguiente container, es horizontal
                height: 8.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255),//color
              ),
              

            

 //ACÁ LO DEMÁS


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

