import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'items.dart';
import 'theme.dart';
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
      home: const SplashScreen(),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeAppState createState() => _HomeAppState();
}


class _HomeAppState extends State<HomeApp> {
  late PageController _pageController;
  int _currentPage = 0;
  final List<String> _screenTitles = ["Menú", "Papa Puntos", "Pedidos", "Perfil"];
  final List<IconData> _screenIcons = [Icons.restaurant_menu, Icons.star, Icons.receipt_long, Icons.person_rounded];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _navigateToPage(int index) {
    setState(() {
      _currentPage = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: PageView(
        
        controller: _pageController,
        
        children: [
          
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text(
                  'Instapp',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                actions: [
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.favorite_border_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('NO HAGO NADA TODAVÍA, DUMMY1');
                      }
                    },
                  ),
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.offline_bolt_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('NO HAGO NADA TODAVÍA, DUMMY2');
                      }
                    },
                  ),
                ],
                
                floating: true,
                pinned: false,
                expandedHeight: 80.0,
              ),
              
const Padding(
  padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
  child: Card1(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),

const Padding(
  padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
  child: Card1(), // Simplemente utiliza SimpleCard en lugar de anidar otro Container
),
              
              SliverList(//SE MODIFICÓ ESTA LISTA PARA QUE LE PUEDA PASAR ATRIBUTOS A LA CARD DEFINIDA EN ITEMS.DART
                delegate: SliverChildListDelegate(
                  [
                    createCustomCard(
                      context,
                      'assets/mitades.png',
                      'Título 1',
                    ),
                    createCustomCard(
                      context,
                      'assets/2.jpg',
                      'Título 2',
                    ),
                    // PUEDES AGREGAR MÁS TARJETA
                  ],
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text(
                  'Usuario',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    novedadesItem(),
                    novedadesItem(),
                    novedadesItem(),
                  ],
                ),
              ),
            ],
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text(
                  'Llamadas',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                actions: [
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.favorite_border_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Icono de búsqueda presionado!');
                      }
                    },
                  ),
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.offline_bolt_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Icono de más opciones presionado!');
                      }
                    },
                  ),
                ],
                floating: false,
                pinned: false,
                expandedHeight: 80.0,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    llamadasItem(context, 'Mamá'),
                    llamadasItem(context, 'Amigo 1'),
                    llamadasItem(context, 'Amigo 2'),
                  ],
                ),
              ),
            ],
          ),
          /* POR CADA PANTALLA NUEVA O NAVEGACIÓN SE DEBE AGREGAR UN NUEVO CustomScrollVIew, EVIDENTEMENTE LOS MIEMBROS VIENEN DE ITEMS.DART
          Habría que crear nuevos items u objetos
          ESTE ES UN CUSTOMSCROLLVIEW NUEVO, CON EL TÍTULO COORDINADORES*/
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text(
                  'Coordinadores',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                actions: [
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.favorite_border_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Icono de búsqueda presionado!');
                      }
                    },
                  ),
                  IconButton(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    icon: const Icon(Icons.offline_bolt_outlined),
                    onPressed: () {
                      if (kDebugMode) {
                        print('Icono de más opciones presionado!');
                      }
                    },
                  ),
                ],
                floating: false,
                pinned: false,
                expandedHeight: 80.0,
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    llamadasItem(context, 'Germán'), //acá conviene crear un nuevo elemento en items.dart
                    llamadasItem(context, 'Soledad'),
                    llamadasItem(context, 'Valentina'),
                  ],
                ),
              ),
            ],
          ),
        ],
        onPageChanged: (index) {
          _navigateToPage(index);
        },
      ),
      /*SE HA MODIFICADO EL BOTTOM BAR, AL COMIENZO DEL CÓDIGO ESTÁN Los INDEX DE LAS PANTALLAS, SE PUEDE DEJAR NAVEGACIÓN MEDIANTE GESTO E ÍCONO
      HAY QUE REDEFINIR EL NOMBRE DE LAS PANTALLAS, RECUERDA QUE LOS ITEMS ESTÁN EN EN ARCHIVO ITEMS.DART
      AL NAVEGAR TE DARÁS CUENTA QUE REPITE LA ÚLTIMA NAVEGACIÓN, ESO ES PORQUE FALTA UN CustomScrollView, se agregó uno nuevo, coordinadores, más arriba*/
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: _navigateToPage,
        type: BottomNavigationBarType.fixed,
        items: List.generate(
          _screenTitles.length,
          (index) => BottomNavigationBarItem(
            icon: Icon(_screenIcons[index]),
            label: _screenTitles[index],
          ),
        ),
      ),
      
    );
    
  }
}

