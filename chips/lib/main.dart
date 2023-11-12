import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              // Acción del botón de menú
            },
          ),
          title: const Text('Taqueria'),
          actions: [
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Acción del botón de persona
              },
            ),
          ],
        ),
        body: const ChipNavigationBar(),
      ),
    );
  }
}

class ChipNavigationBar extends StatefulWidget {
  const ChipNavigationBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChipNavigationBarState createState() => _ChipNavigationBarState();
}

class _ChipNavigationBarState extends State<ChipNavigationBar> {
  int _selectedIndex = 0;

  final List<String> _chipLabels = [
    "Mexicanos",
    "Veganas",
    "Especialidades",
    "Ofertas",
    "Arma tu taco",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List<Widget>.generate(_chipLabels.length, (int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ChoiceChip(
                  label: Text(_chipLabels[index]),
                  selected: _selectedIndex == index,
                  onSelected: (bool selected) {
                    setState(() {
                      _selectedIndex = selected ? index : 0;
                      // AGREGA LO QUE DESEAS QUE HAGA LA APP
                    });
                  },
                  labelStyle: TextStyle(
                    color: _selectedIndex == index ? Colors.white : Colors.black,
                  ),
                  selectedColor: Colors.blue,
                  backgroundColor: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
              );
            }),
          ),
        ),
        // CONTENIDO 
      ],
    );
  }
}

