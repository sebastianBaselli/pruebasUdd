import 'package:flutter/material.dart';

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
                padding: const EdgeInsets.only(left: 8.0, top: 8.0),
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
                    color: _selectedIndex == index ? Colors.white : Color(0xff2d5d2b),
                    fontSize: 20,
                    fontFamily: 'FrancoisOne'
                  ),
                  selectedColor: Color(0xff2d5d2b),
                  backgroundColor: Colors.white,
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

class Card1 extends StatelessWidget {
  const Card1({Key? key}) : super(key: key);

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
            height: 180.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/1.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'YESVEMBER!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FrancoisOne',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Compra una pizza familiar de 3ing y lleva Gratis unos palitos de ajo y una bebida',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8), // Añadir espacio entre el texto y el botón
                  Container(
                    alignment: Alignment.center, // Centrar el botón
                    child: ElevatedButton(
                      onPressed: () {
                        // Acciones cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d5d2b), // Color del botón primario
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Radio de las esquinas
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 150), // Ajustar el tamaño del botón aquí
                      ),
                      child: const Text(
                        'DESDE 15.950',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Reducir el tamaño del texto
                          fontFamily: 'FrancoisOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

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
            height: 180.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/2.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            height: 130,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'COMBO RED BULL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FrancoisOne',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Combo Red Bull',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8), // Añadir espacio entre el texto y el botón
                  Container(
                    alignment: Alignment.center, // Centrar el botón
                    child: ElevatedButton(
                      onPressed: () {
                        // Acciones cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d5d2b), // Color del botón primario
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Radio de las esquinas
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 150), // Ajustar el tamaño del botón aquí
                      ),
                      child: const Text(
                        'DESDE 28.900',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Reducir el tamaño del texto
                          fontFamily: 'FrancoisOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

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
            height: 180.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/3.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'YESVEMBER!!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FrancoisOne',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Rolls o palitos de queso + bebida 1,5lt y lleva por 6990 una pizza familiar 3 ing !',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8), // Añadir espacio entre el texto y el botón
                  Container(
                    alignment: Alignment.center, // Centrar el botón
                    child: ElevatedButton(
                      onPressed: () {
                        // Acciones cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d5d2b), // Color del botón primario
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Radio de las esquinas
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 150), // Ajustar el tamaño del botón aquí
                      ),
                      child: const Text(
                        'DESDE 15.950',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Reducir el tamaño del texto
                          fontFamily: 'FrancoisOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card4 extends StatelessWidget {
  const Card4({Key? key}) : super(key: key);

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
            height: 180.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/4.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            height: 130,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PIZZA DEL MES DELIVERY - THE WORKS.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FrancoisOne',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Pizza del Mes Delivery - The Works.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8), // Añadir espacio entre el texto y el botón
                  Container(
                    alignment: Alignment.center, // Centrar el botón
                    child: ElevatedButton(
                      onPressed: () {
                        // Acciones cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d5d2b), // Color del botón primario
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Radio de las esquinas
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 150), // Ajustar el tamaño del botón aquí
                      ),
                      child: const Text(
                        'DESDE 10.990',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Reducir el tamaño del texto
                          fontFamily: 'FrancoisOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card5 extends StatelessWidget {
  const Card5({Key? key}) : super(key: key);

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
            height: 180.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/5.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            height: 130,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PROMO PAPADIAS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FrancoisOne',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Papadia de Pollo BBQ + Bebida 591ml a 5000 !',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8), // Añadir espacio entre el texto y el botón
                  Container(
                    alignment: Alignment.center, // Centrar el botón
                    child: ElevatedButton(
                      onPressed: () {
                        // Acciones cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d5d2b), // Color del botón primario
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Radio de las esquinas
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 150), // Ajustar el tamaño del botón aquí
                      ),
                      child: const Text(
                        'DESDE 5.000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Reducir el tamaño del texto
                          fontFamily: 'FrancoisOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card6 extends StatelessWidget {
  const Card6({Key? key}) : super(key: key);

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
            height: 180.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/6.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            height: 130,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SHAQ-A-RONI',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FrancoisOne',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Agranda tu Super Pepperoni familiar a Shaq-a-roni por sólo 990',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8), // Añadir espacio entre el texto y el botón
                  Container(
                    alignment: Alignment.center, // Centrar el botón
                    child: ElevatedButton(
                      onPressed: () {
                        // Acciones cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d5d2b), // Color del botón primario
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Radio de las esquinas
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 150), // Ajustar el tamaño del botón aquí
                      ),
                      child: const Text(
                        'DESDE 16.940',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Reducir el tamaño del texto
                          fontFamily: 'FrancoisOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card7 extends StatelessWidget {
  const Card7({Key? key}) : super(key: key);

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
            height: 180.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/7.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            height: 130,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SUPER DUO - DELIVERY.',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FrancoisOne',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '2 especialidades familiares (3 ing) por 20.990',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8), // Añadir espacio entre el texto y el botón
                  Container(
                    alignment: Alignment.center, // Centrar el botón
                    child: ElevatedButton(
                      onPressed: () {
                        // Acciones cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d5d2b), // Color del botón primario
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Radio de las esquinas
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 150), // Ajustar el tamaño del botón aquí
                      ),
                      child: const Text(
                        'DESDE 20.990',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Reducir el tamaño del texto
                          fontFamily: 'FrancoisOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card8 extends StatelessWidget {
  const Card8({Key? key}) : super(key: key);

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
            height: 180.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/8.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            height: 130,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SUPER TRIO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FrancoisOne',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '3 especialidades familiares (3 ing) por 29.970',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8), // Añadir espacio entre el texto y el botón
                  Container(
                    alignment: Alignment.center, // Centrar el botón
                    child: ElevatedButton(
                      onPressed: () {
                        // Acciones cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d5d2b), // Color del botón primario
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Radio de las esquinas
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 150), // Ajustar el tamaño del botón aquí
                      ),
                      child: const Text(
                        'DESDE 29.970',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Reducir el tamaño del texto
                          fontFamily: 'FrancoisOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card9 extends StatelessWidget {
  const Card9({Key? key}) : super(key: key);

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
            height: 180.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/9.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            height: 130,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PAPA COMBO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FrancoisOne',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Pizza de 3 ingredientes, acompañamiento simple más bebida.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8), // Añadir espacio entre el texto y el botón
                  Container(
                    alignment: Alignment.center, // Centrar el botón
                    child: ElevatedButton(
                      onPressed: () {
                        // Acciones cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d5d2b), // Color del botón primario
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Radio de las esquinas
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 150), // Ajustar el tamaño del botón aquí
                      ),
                      child: const Text(
                        'DESDE 16.890',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Reducir el tamaño del texto
                          fontFamily: 'FrancoisOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card10 extends StatelessWidget {
  const Card10({Key? key}) : super(key: key);

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
            height: 180.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/10.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            height: 150,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'COMBO ROLLS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FrancoisOne',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Rolls de Pepperoni o Jamón, Pizza familiar de 3 Ingredientes y Bebida de 2.5 lts.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8), // Añadir espacio entre el texto y el botón
                  Container(
                    alignment: Alignment.center, // Centrar el botón
                    child: ElevatedButton(
                      onPressed: () {
                        // Acciones cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d5d2b), // Color del botón primario
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Radio de las esquinas
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 150), // Ajustar el tamaño del botón aquí
                      ),
                      child: const Text(
                        'DESDE 21.490',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Reducir el tamaño del texto
                          fontFamily: 'FrancoisOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card11 extends StatelessWidget {
  const Card11({Key? key}) : super(key: key);

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
            height: 180.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/11.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            height: 130,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'COMBO CON HELADOS MEDIANOS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FrancoisOne',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Elige tu promo de pizza 3 ing + bebida + 2 helados Coldstone.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8), // Añadir espacio entre el texto y el botón
                  Container(
                    alignment: Alignment.center, // Centrar el botón
                    child: ElevatedButton(
                      onPressed: () {
                        // Acciones cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d5d2b), // Color del botón primario
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Radio de las esquinas
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 150), // Ajustar el tamaño del botón aquí
                      ),
                      child: const Text(
                        'DESDE 23.990',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Reducir el tamaño del texto
                          fontFamily: 'FrancoisOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card12 extends StatelessWidget {
  const Card12({Key? key}) : super(key: key);

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
            height: 180.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/12.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            height: 130,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'COMBO CON HELADOS GRANDE',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FrancoisOne',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Elige tu promo de pizza 3 ing + bebida + helado Coldstone.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8), // Añadir espacio entre el texto y el botón
                  Container(
                    alignment: Alignment.center, // Centrar el botón
                    child: ElevatedButton(
                      onPressed: () {
                        // Acciones cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d5d2b), // Color del botón primario
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Radio de las esquinas
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 150), // Ajustar el tamaño del botón aquí
                      ),
                      child: const Text(
                        'DESDE 23.990',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Reducir el tamaño del texto
                          fontFamily: 'FrancoisOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card13 extends StatelessWidget {
  const Card13({Key? key}) : super(key: key);

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
            height: 180.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/13.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          Container(
            height: 130,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5.0),
                bottomRight: Radius.circular(5.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'BIG COMBO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'FrancoisOne',
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Selecciona 5 pizzas de especialidad de 2 o 3 ingredientes!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8), // Añadir espacio entre el texto y el botón
                  Container(
                    alignment: Alignment.center, // Centrar el botón
                    child: ElevatedButton(
                      onPressed: () {
                        // Acciones cuando se presiona el botón
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2d5d2b), // Color del botón primario
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0), // Radio de las esquinas
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 150), // Ajustar el tamaño del botón aquí
                      ),
                      child: const Text(
                        'DESDE 47.900',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20, // Reducir el tamaño del texto
                          fontFamily: 'FrancoisOne',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card14 extends StatelessWidget {
  const Card14({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/14.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card15 extends StatelessWidget {
  const Card15({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/15.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card16 extends StatelessWidget {
  const Card16({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/16.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card17 extends StatelessWidget {
  const Card17({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/17.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card18 extends StatelessWidget {
  const Card18({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/18.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card19 extends StatelessWidget {
  const Card19({super.key});

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
            height: 190.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/19.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card20 extends StatelessWidget {
  const Card20({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/20.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card21 extends StatelessWidget {
  const Card21({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/21.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card22 extends StatelessWidget {
  const Card22({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/22.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card23 extends StatelessWidget {
  const Card23({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/23.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card24 extends StatelessWidget {
  const Card24({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/24.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card25 extends StatelessWidget {
  const Card25({super.key});

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
            height: 190.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/25.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card26 extends StatelessWidget {
  const Card26({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/26.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card27 extends StatelessWidget {
  const Card27({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/27.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card28 extends StatelessWidget {
  const Card28({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/28.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card29 extends StatelessWidget {
  const Card29({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/29.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card30 extends StatelessWidget {
  const Card30({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/30.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card31 extends StatelessWidget {
  const Card31({super.key});

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
            height: 190.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/31.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card32 extends StatelessWidget {
  const Card32({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/32.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card33 extends StatelessWidget {
  const Card33({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/33.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card34 extends StatelessWidget {
  const Card34({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/34.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card35 extends StatelessWidget {
  const Card35({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/35.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card36 extends StatelessWidget {
  const Card36({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/36.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card37 extends StatelessWidget {
  const Card37({super.key});

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
            height: 190.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/37.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card38 extends StatelessWidget {
  const Card38({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/38.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card39 extends StatelessWidget {
  const Card39({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/39.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card40 extends StatelessWidget {
  const Card40({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/40.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card41 extends StatelessWidget {
  const Card41({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/41.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card42 extends StatelessWidget {
  const Card42({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/42.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card43 extends StatelessWidget {
  const Card43({super.key});

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
            height: 190.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/43.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card44 extends StatelessWidget {
  const Card44({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/44.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card45 extends StatelessWidget {
  const Card45({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/45.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card46 extends StatelessWidget {
  const Card46({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/46.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card47 extends StatelessWidget {
  const Card47({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/47.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card48 extends StatelessWidget {
  const Card48({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/48.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card49 extends StatelessWidget {
  const Card49({super.key});

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
            height: 190.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/49.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card50 extends StatelessWidget {
  const Card50({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/50.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card51 extends StatelessWidget {
  const Card51({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/51.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card52 extends StatelessWidget {
  const Card52({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/52.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class Card53 extends StatelessWidget {
  const Card53({super.key});

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
            height: 200.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/53.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

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

class CardPedidos1 extends StatelessWidget {
  const CardPedidos1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 437.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/actual.jpeg'),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

                ),
          ),
          
        ],
      ),
    );
  }
}

class CardPedidos2 extends StatelessWidget {
  const CardPedidos2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 437.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/pasado.jpeg'),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

                ),
          ),
          
        ],
      ),
    );
  }
}

class CardPerfil extends StatelessWidget {
  const CardPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 650.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/perfil.jpeg'),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),

                ),
          ),
        ],
      ),
    );
  }
}

