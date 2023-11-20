import 'package:flutter/material.dart';
import 'componentes.dart';
import 'package:papa_johns_app/theme.dart';//NO OLVIDAR CAMBIAR POR NOMBRE DEL PROYECTO
import 'splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      theme: ThemeData(
      scaffoldBackgroundColor: Color(0xfff5f5f5),
      ),
    );
  }
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  toolbarHeight: 56,
  backgroundColor: Color(0xff2d5d2b),
  elevation: 0,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center, // Centra los elementos horizontalmente
    children: [
      Icon(
        Icons.store_outlined, // Icono al inicio del texto
        color: Colors.white,
      ),
      SizedBox(width: 8), // Espacio entre el icono y el texto
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recoger en Local:',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            ' Escuela Militar',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ],
      ),
      SizedBox(width: 8), // Espacio entre el texto y el icono al final
      Icon(
        Icons.expand_more, // Icono al final del texto
        color: Colors.white,
      ),
    ],
  ),
),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
            color: Colors.white,  
            child: ChipNavigationBar(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.all(0),
                child: const Row(
                  children: [
                    SizedBox(width: 16),
                    Expanded(
                      child: TextField(
                        style: TextStyle(
                          fontSize: 20, // Ajusta el tamaño del texto según tus preferencias // Cambia el color del texto según tus preferencias
                          ),
                        decoration: InputDecoration(
                          hintText: ' ¿Qué te apetece hoy?',
                          border: InputBorder.none,
                          
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(
              height: 8.0,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            const SizedBox(height: 1),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  String imageName = '${index + 1}.png';
                  return GestureDetector(
                    onTap: () {
                      // AquÃ­ puedes agregar la lÃ³gica para manejar el tap en las imÃ¡genes
                    },
                    child: Container(
                      width: 470,
                      height: 200,
                      margin: const EdgeInsets.only(left: 7, right: 7),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
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
                fontFamily: 'FrancoisOne',
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card1(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card2(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card3(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card4(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card5(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card6(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card7(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card8(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card9(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card10(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card11(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card12(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card13(),
            ),
            const Text(
              'PIZZA',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'FrancoisOne',
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card14(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card15(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card16(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card17(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card18(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card19(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card20(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card21(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card22(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card23(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card24(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card25(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card26(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card27(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card28(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card29(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card30(),
            ),
            const Text(
              'ACOMPAÑAMIENTOS',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'FrancoisOne',
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card31(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card32(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card33(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card34(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card35(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card36(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card37(),
            ),
            const Text(
              'BEBIDAS',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'FrancoisOne',
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card38(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card39(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card40(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card41(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card42(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card43(),
            ),
            const Text(
              'POSTRES',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'FrancoisOne',
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card44(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card45(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card46(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card47(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card48(),
            ),
            const Text(
              'EXTRAS',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'FrancoisOne',
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card49(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card50(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card51(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card52(),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
              child: Card53(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu, color: Color(0xff2d5d2b)),
            label: 'Menú',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star, color: Color(0xffa1a1a1)),
            label: 'Papa Puntos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long, color: Color(0xffa1a1a1)),
            label: 'Pedidos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Color(0xffa1a1a1)),
            label: 'Perfil',
          ),
        ],
        selectedItemColor: Color(0xff2d5d2b),
        unselectedItemColor: const Color.fromARGB(255, 103, 102, 102),
        onTap: (index) {
          switch (index) {
            case 0:
              // Navegar a la pÃ¡gina MenÃº
              // Puedes agregar la navegaciÃ³n a la pÃ¡gina MenÃº si lo necesitas
              break;
            case 1:
              // Navegar a la pÃ¡gina Papa Puntos
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => PapaPuntosDetallePage()),
              );
              break;
            case 2:
              // Navegar a la pÃ¡gina Pedidos
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => PedidosDetallePage()),
              );
              break;
            case 3:
              // Navegar a la pÃ¡gina Perfil
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => PerfilDetallePage()),
              );
              break;
          }
        },
      ),
    );
  }
}
//ACÃ LAS CLASES , LAS PANTALLAS FIJARSE QUE TIENEN APPBAR Y BODY, AHÃ DEBEN IR LOS ELEMENTOS QUE TENÃAN EN LAS OTRAS PANTALLAS
class PapaPuntosDetallePage extends StatelessWidget {
  const PapaPuntosDetallePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2d5d2b), // Puedes ajustar el color segÃºn tu preferencia
        title: const Text('MIS PAPA PUNTOS'),
      ),
      body: const Center(
        child: Text('Contenido de la página de detalles de Papa Puntos'),
      ),
    );
  }
}

class PedidosDetallePage extends StatefulWidget {
  const PedidosDetallePage({Key? key}) : super(key: key);

  @override
  _PedidosDetallePageState createState() => _PedidosDetallePageState();
}

class _PedidosDetallePageState extends State<PedidosDetallePage> {
  int _currentIndex = 0; // Índice actual de la pestaña seleccionada

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Número de pestañas
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'MIS PEDIDOS',
                style: TextStyle(
                  color: Color(0xff2d5d2b),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'FrancoisOne',
                ),
              ),
            ],
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text(
                  'PEDIDOS ACTUALES',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'FrancoisOne',
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'PEDIDOS PASADOS',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'FrancoisOne',
                  ),
                ),
              ),
            ],
            indicatorColor: Color(0xff2d5d2b),
            labelColor: Colors.black,
          ),
        ),
        body: const TabBarView(
          children: [
            // Contenido de la primera pestaña (Información)
            Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 10, 0),
              child: CardPedidos1(),
            ),
            // Contenido de la segunda pestaña (Configuración)
            Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 10, 0),
              child: CardPedidos2(),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          selectedItemColor: Color(0xff2d5d2b),
          unselectedItemColor: Color(0xffa1a1a1),
          currentIndex: 2,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Buscar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Perfil',
            ),
          ],
        ),
      ),
    );
  }
}



class PerfilDetallePage extends StatelessWidget {
  const PerfilDetallePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white, // Puedes ajustar el color segÃºn tu preferencia
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MI PERFIL',
              style: TextStyle(
                color: Color(0xff2d5d2b),
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'FrancoisOne',
              ),
            ),
          ],
        ),
        

      ),
      body: SingleChildScrollView(
        child: Column(
              children: <Widget>[
                const Padding(
                 padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
                 child: CardPerfil(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
                ),
              ],
            ),
      ),
            bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          selectedItemColor: Color(0xff2d5d2b),
          unselectedItemColor: Color(0xffa1a1a1),
          currentIndex: 3,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant_menu),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'Buscar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt_long),
              label: 'Favoritos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Perfil',
            ),
          ],
        ),
    );
  }
}
