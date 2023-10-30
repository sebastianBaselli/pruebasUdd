import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:apps_papajohns/items.dart';
import 'package:apps_papajohns/theme.dart';
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
    _tabController = TabController(length: 6, vsync: this);
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
          'Recoger en Local: Escuela Militar',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            _buildTab('PROMOCIONES', 0),
            _buildTab('PIZZAS', 5), // Agregar el círculo
            _buildTab('ACOMPAÑAMIENTOS', 2),
            _buildTab('BEBIDAS', 3),
            _buildTab('POSTRES', 4),
            _buildTab('EXTRAS', 6),
          ],
          labelColor: Colors.white,
          unselectedLabelColor: MyTheme.lightTheme().colorScheme.secondary,
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
              children: const [
                Center(
                  child: TextField(
                            decoration: InputDecoration(
                              hintText: '¿Qué te apetece hoy?',
                              border: InputBorder.none,
                            ),
                          ),
                ),
                Center(
                  child: Text('Pestaña de Chats'),
                ),
                Center(
                  child: Text('Pestaña de Novedades'),
                ),
                Center(
                  child: Text('Pestaña de Llamadas'),
                ),
                Center(
                  child: Text('Pestaña de Llamadas'),
                ),
                Center(
                  child: Text('Pestaña de Llamadas'),
                ),
              ],
            ),
          ),
        ],
      ),
    
    );
  }

  Widget _buildTab(String title, int index) {
    return Tab(
      child: Text(title),
    );
  }
}