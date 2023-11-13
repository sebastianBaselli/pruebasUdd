import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pedidos_papajohns/items.dart';
import 'package:pedidos_papajohns/theme.dart';
import 'splashscreen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(),
      //darkTheme: MyTheme.darkTheme(),
      home: const SplashScreen(), // Mostrar la pantalla de carga primero
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  bool _isChatsTabActive = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      _isChatsTabActive = _tabController.index == 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MIS PEDIDOS',
          style: TextStyle(

            color: Color(0xff2d5d2b),
            fontSize: 20,
            fontFamily: 'FrancoisOne'
          ),
        ),
        
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            _buildTab('PEDIDOS ACTUALES', 0),
            _buildTabWithNumberAndColor('PEDIDOS PASADOS', 5, _isChatsTabActive), // Agregar el círculo
          ],
          labelColor: Colors.black,
          unselectedLabelColor: Colors.black,
          labelStyle: const TextStyle(
            fontSize: 14,
          ),
        ),
      ),
      body: Column(
        children: [
          
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                const Padding(
  padding: EdgeInsets.fromLTRB(0, 8, 10, 0),
  child: Card1(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),
                const Padding(
  padding: EdgeInsets.fromLTRB(0, 8, 10, 0),
  child: Card2(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),
              ],
            ),
          ),
        ],
      ),
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
    );
    
  }

  

  Widget _buildTab(String title, int index) {
    return Tab(
      child: Text(title),
    );
  }

  Widget _buildTabWithNumberAndColor(String title, int number, bool isActive) {
    final circleColor = isActive
        ? Colors.white
        : MyTheme.lightTheme().colorScheme.tertiary;

    return Tab(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Text(title, style: const TextStyle(fontSize: 14)),
          ),
          const SizedBox(width: 4),
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: circleColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: TextStyle(
                  color: MyTheme.lightTheme().colorScheme.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}