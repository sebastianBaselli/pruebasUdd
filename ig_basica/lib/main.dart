import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'items.dart';
import 'package:ig_basica/theme.dart';
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
              SliverToBoxAdapter(
                child: Container(
                  height: 80,
                  color: Colors.white,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      final imageNames = [
                        '1.jpg',
                        '2.jpg',
                        '3.jpg',
                        '4.jpg',
                        '5.jpg',
                        '6.jpg',
                        '7.jpg',
                        '8.jpg',
                        '9.jpg',
                        '10.jpg',
                        '11.jpg',
                        '22.jpg',
                      ];
                      return Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 16.0 : 8.0),
                        child: CircleAvatar(
                          radius: 32,
                          backgroundImage: AssetImage('assets/${imageNames[index]}'),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    createCustomCard(context, 'Grupo 1'),
                    createCustomCard(context, 'Grupo 2'),
                    createCustomCard(context, 'Grupo 3'),
                    createCustomCard(context, 'Grupo 4'),
                    createCustomCard(context, 'Grupo 5'),
                    createCustomCard(context, 'Grupo 6'),
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
        ],
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
    );
  }
}

