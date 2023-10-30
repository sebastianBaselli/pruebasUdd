import 'package:flutter/material.dart';
import 'package:prueba/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(),
      //darkTheme: MyTheme.darkTheme(),
    );
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  bool _isChatsTabActive = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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

              toolbarHeight: 56, // Altura del AppBar
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              elevation: 0,
              title: const Column( // Usamos el título para los textos
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recoger en Local: Avda La Plaza 680',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              bottom: TabBar(
          controller: _tabController,
          tabs: [
            _buildTab('Grupos', 0),
            _buildTabWithNumberAndColor('Chats', 5, _isChatsTabActive), // Agregar el círculo
            _buildTab('Novedades', 2),
            _buildTab('Llamadas', 3),
          ],
          labelColor: Colors.white,
          unselectedLabelColor: MyTheme.lightTheme().colorScheme.secondary,
          labelStyle: const TextStyle(
            fontSize: 14,
          ),
        ),
     ),
     floatingActionButton: _isChatsTabActive
  ? FloatingActionButton(
      onPressed: () {
        // Agrega la lógica de lo que debe hacer el botón de mensaje aquí
      },
      backgroundColor: MyTheme.lightTheme().primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0), // Hace que las esquinas sean redondeadas con un radio de 8
      ),
      child: const Icon(
        Icons.message,
        color: Colors.white,
      ),
    )
  : null,
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
