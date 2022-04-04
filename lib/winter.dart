import 'package:flutter/material.dart';

class winter extends StatelessWidget {
  final List<String> image = [
    'assets/images/winter/KNY-yuukaku-hen.jpg',
    'assets/images/winter/sono-bisque.jpg',
    'assets/images/winter/tensai-ouji.jpg',
    'assets/images/winter/sabikui.webp',
    'assets/images/winter/akebi-chan.jpg',
    'assets/images/winter/leadale-cayna.jpg',
    'assets/images/winter/tokyo-24ku.jpg',
    'assets/images/winter/slow-loop.webp',
    'assets/images/winter/rymans-club.jpg',
    'assets/images/winter/koroshi-ai.jpg',
  ];

  final List<String> title = [
    'Kimetsu no Yaiba : Yuukaku-hen',
    'Sono Bisque Doll wa koi wo Suru',
    'Tensai Ouji no Akaji Kokka Saisei Jutsu',
    'Sabikui Bisco',
    'Akebi-chan no Sailor-fuku',
    'Leadale no Daichi nite',
    'Tokyo 24-ku',
    'Slow Loop',
    "Ryman's Club",
    'Koroshi Ai',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("LIST ANIME WINTER 2022"),
        ),
      ),
      body: ListView.builder(
        itemCount: image.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                  child: Image.asset(
                image[index],
                fit: BoxFit.cover,
              )),
              subtitle: Text(title[index], style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}
