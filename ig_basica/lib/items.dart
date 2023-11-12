import 'package:flutter/material.dart';
import 'package:ig_basica/theme.dart';

Widget novedadesItem() {
  return ListTile(
    leading: CircleAvatar(
      backgroundColor: MyTheme.lightTheme().colorScheme.onPrimaryContainer,
    ),
    title: const Text('Actualizacion'),
    subtitle: const Text('Hoy, 10:15 AM'),
    trailing: const Icon(Icons.more_vert),
  );
}

Widget llamadasItem(BuildContext context, String title) {
  const time = '15 de octubre, 12:30';
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => buildDetailScreen(context, title),
        ),
      );
    },
    child: ListTile(
      leading: const CircleAvatar(
       // backgroundColor: MyTheme.lightTheme().colorScheme.onPrimaryContainer,
        backgroundImage: AssetImage('assets/1.jpg'), // Carga la imagen '1.jpg' en el CircleAvatar
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..scale(-1.0, -1.0, 1.0),
            child: const Icon(Icons.arrow_outward, size: 16),
          ),
          const SizedBox(width: 4),
          const Text(time, style: TextStyle(fontSize: 12)),
        ],
      ),
      trailing: const Icon(Icons.call),
    ),
  );
}

Widget buildDetailScreen(BuildContext context, String itemName) {
  return Scaffold(
    appBar: AppBar(
      title: Text(itemName),
    ),
    body: Center(
      child: Text('Detalles de $itemName'),
    ),
  );
}

Widget createCustomCard(BuildContext context, String groupName) {
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 180,
          color: Colors.white,
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('BottomSheet'),
              ],
            ),
          ),
        );
      },
    );
  }

  return Card(
    elevation: 1,
    margin: const EdgeInsets.all(0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),
    ),
    child: Container(
      height: 460,
      color: Colors.grey,
      child: Column(
        children: [
          Container(
            color: Colors.white,
            height: 72,
            padding: const EdgeInsets.only(left: 10),
            child: ListTile(
              contentPadding: const EdgeInsets.fromLTRB(2, 4, 8, 4),
              leading: const CircleAvatar(
                //backgroundColor: Colors.grey,
                backgroundImage: AssetImage('assets/1.jpg'), // Ruta de tu imagen '1.jpg'
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Card Uno',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {
                      showBottomSheet(context);
                    },
                    padding: const EdgeInsets.only(top: 12),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pa.jpg'), // Ruta de tu imagen '2.jpg'
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Container(
                  color: Colors.grey,
                  padding: const EdgeInsets.all(0),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            height: 100,
            child: Container(
              margin: const EdgeInsets.only(top: 12),
              alignment: Alignment.topLeft,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 16),
                  Icon(
                    Icons.favorite_outline,
                    color: Colors.black,
                  ),
                  SizedBox(width: 12),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black,
                  ),
                  SizedBox(width: 12),
                  Icon(
                    Icons.send,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

