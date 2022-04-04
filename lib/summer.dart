import 'package:flutter/material.dart';

class summer extends StatelessWidget {
  final List<String> image = [
    'assets/images/summer/tensura.jpg',
    'assets/images/summer/kobayasi-san.jpg',
    'assets/images/summer/tanmosi.jpg',
    'assets/images/summer/vanitas.webp',
    'assets/images/summer/Shinigami-Bocchan.webp',
    'assets/images/summer/aquatope.jpg',
    'assets/images/summer/re-main.jpg',
    'assets/images/summer/kanojo-mo-kanojo.jpg',
    'assets/images/summer/Sonny-boy.jpg',
    'assets/images/summer/belle.jpg',
  ];

  final List<String> title = [
    'Tensei shitara Slime Datta Ken 2nd Season Part 2',
    'Kobayashi-san Chi no Maid Dragon S',
    'Tantei wa Mou, Shideiru',
    'Vanitas no Karte',
    'Shinigami Bocchan to Kuro Maid',
    'Shiroi Suna no Aquatope',
    'Re-Main',
    'Kanojo mo Kanojo',
    'Sonny Boy',
    'Ryuu to Sobakasu no Hime',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("LIST ANIME SUMMER 2021"),
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
