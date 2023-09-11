import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

// Theme config for FlexColorScheme version 7.3.x. Make sure you use
// same or higher package version, but still same major version. If you
// use a lower package version, some properties may not be supported.
// In that case remove them after copying this theme to your app.
theme: FlexThemeData.light(
  scheme: FlexScheme.redWine,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 7,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 10,
    blendOnColors: false,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
),
darkTheme: FlexThemeData.dark(
  scheme: FlexScheme.redWine,
  surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
  blendLevel: 13,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    useTextTheme: true,
    useM2StyleDividerInM3: true,
    alignedDropdown: true,
    useInputDecoratorThemeInDialogs: true,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: true,
  swapLegacyOnMaterial3: true,
  // To use the Playground font, add GoogleFonts package and uncomment
  // fontFamily: GoogleFonts.notoSans().fontFamily,
),
// If you do not have a themeMode switch, uncomment this line
// to let the device system mode control the theme mode:
// themeMode: ThemeMode.system,

      home: const HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Baselli',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              if (kDebugMode) {
                print('Carrito de compras');
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              if (kDebugMode) {
                print('Configuración');
              }
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              ListTile(

                //AQUI AGRGUE UN USUARIO CON IMAGEN
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/audi.jpeg'),
                ),    //AQUI AGRGUE UN USUARIO CON IMAGEN


                title: const Text(
                  'Audi',
                ),
                subtitle: const Text('20% de descuento'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Añadir en el carrito');
                    }
                  },
                  child: const Icon(Icons.add_shopping_cart),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Audi');
                  }
                },
              ),
              const Divider(),
              ListTile(

                //AQUI AGRGUE UN USUARIO CON IMAGEN
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/chevrolet.jpg'),
                ),    //AQUI AGRGUE UN USUARIO CON IMAGEN


                title: const Text(
                  'Chevrolet',
                ),
                subtitle: const Text('20% de descuento'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Añadir al carrito');
                    }
                  },
                  child: const Icon(Icons.add_shopping_cart),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Chevrolet');
                  }
                },
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  child: Text('AZ'), backgroundColor: Colors.blue
                ),
                title: const Text(
                  'Toyota',
                ),
                subtitle: const Text('20% de descuento'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Añadir al carrito');
                    }
                  },
                  child: const Icon(Icons.add_shopping_cart),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Toyota');
                  }
                },
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  child: Text('NA'), backgroundColor: Colors.orange
                ),
                title: const Text(
                  'Ford',
                ),
                subtitle: const Text('20% de descuento'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Añadir al carrito');
                    }
                  },
                  child: const Icon(Icons.add_shopping_cart),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Ford');
                  }
                },
              ),
              const Divider(),
              ListTile(

                //AQUI AGRGUE UN USUARIO CON IMAGEN
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/mustang.jpg'),
                ),    //AQUI AGRGUE UN USUARIO CON IMAGEN


                title: const Text(
                  'Mustang',
                ),
                subtitle: const Text('20% de descuento'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Añadir al carrito');
                    }
                  },
                  child: const Icon(Icons.add_shopping_cart),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Mustang');
                  }
                },
              ),
              const Divider(),
              ListTile(

                //AQUI AGRGUE UN USUARIO CON IMAGEN
                leading: const CircleAvatar(
                  backgroundImage: AssetImage(
                      'assets/nissan.jpg'),
                ),    //AQUI AGRGUE UN USUARIO CON IMAGEN


                title: const Text(
                  'Nissan',
                ),
                subtitle: const Text('20% de descuento'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Añadir al carrito');
                    }
                  },
                  child: const Icon(Icons.add_shopping_cart),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Nissan');
                  }
                },
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  child: Text('VE'), backgroundColor: Colors.green
                ),
                title: const Text(
                  'Ferrari',
                ),
                subtitle: const Text('20% de descuento'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Añadir al carrito');
                    }
                  },
                  child: const Icon(Icons.add_shopping_cart),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Ferrari');
                  }
                },
              ),
              const Divider(),
              ListTile(
                leading: const CircleAvatar(
                  child: Text('AM'), backgroundColor: Colors.yellow
                ),
                title: const Text(
                  'Suzuki',
                ),
                subtitle: const Text('20% de descuento'),
                trailing: ElevatedButton(
                  onPressed: () {
                    // Agrega la lógica para seguir aquí
                    if (kDebugMode) {
                      print('Añadir al carrito');
                    }
                  },
                  child: const Icon(Icons.add_shopping_cart),
                ),
                onTap: () {
                  if (kDebugMode) {
                    print('Item seleccionado: Suzuki');
                  }
                },
              ),
              const Divider(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Agrega la lógica para el botón Home aquí
              },
            ),
            IconButton(
              icon: const Icon(Icons.favorite),
              onPressed: () {
                // Agrega la lógica para el botón Add aquí
              },
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {
                // Agrega la lógica para el botón Video aquí
              },
            ),
          ],
        ),
      ),
    );
  }
}
