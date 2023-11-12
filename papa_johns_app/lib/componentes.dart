import 'package:flutter/material.dart';


class Card1 extends StatelessWidget {
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 152,
            decoration: const BoxDecoration(
            color: const Color.fromARGB(255,195,195,195),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
              ),
            ),
          ),
          Container(
            height: 48,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 8.0),
              child: Text('Descripción'),
            ),
          ),
        ],
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 152,
            decoration: const BoxDecoration(
            color: const Color.fromARGB(255,195,195,195),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
          ),
        ],
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
    "PROMOCIONES",
    "PIZZAS",
    "ACOMPAÑAMIENTOS",
    "BEBIDAS",
    "POSTRES",
    "EXTRAS",
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
                  selectedColor: Color(0xff2d5d2b),
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

