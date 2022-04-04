import 'package:flutter/material.dart';

class fall extends StatelessWidget {
  final List<String> image = [
    'assets/images/fall/KNY_MugenTrain.jpg',
    'assets/images/fall/Komi-san.jpg',
    'assets/images/fall/takt-opdestiny.jpg',
    'assets/images/fall/ousama-ranking.jpg',
    'assets/images/fall/sekai-saikyou.webp',
    'assets/images/fall/mieruko-chan.jpg',
    'assets/images/fall/senpai-ga-uzai.jpg',
    'assets/images/fall/Taishou-Otome.jpg',
    'assets/images/fall/cover-selection-project.jpg',
    'assets/images/fall/jjk-movie.jpg',
  ];

  final List<String> title = [
    'Kimetsu no Yaiba : Mugen Ressha-hen',
    'Komi-san wa, Comyushou desu',
    'Takt Op. Destiny',
    'Ousama Ranking',
    'Sekai Saikou no Ansatsusha, Isekai Kizoku ni Tensei suru',
    'Mieruko-chan',
    'Senpai ga Uzai Kouhai no Hanashi',
    'Taishou Otome Otogibanashi',
    'Selection Project',
    'Jujutsu Kaisen 0 Movie',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("LIST ANIME FALL 2021"),
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
              subtitle: Text(title[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          );
        },
      ),
    );
  }
}
