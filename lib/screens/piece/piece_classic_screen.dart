import 'package:flutter/material.dart';
import 'package:forte_v2/widget/piece_widget.dart';

class PieceClassicScreen extends StatelessWidget {
  const PieceClassicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: const Text('Произведения', style: TextStyle(color: Colors.white, fontSize: 28),),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Moonlight()));},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown, width: 2),
                borderRadius: BorderRadius.circular(15),
                color: Colors.yellow[200],
              ),
              child: const Center(
                child: Text('Людвиг ван Бетховен\n"Лунная соната"', style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 25,),),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Joke()));},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.brown, width: 2),
                borderRadius: BorderRadius.circular(15),
                color: Colors.yellow[200],
              ),
              child: const Center (
                  child: Text('Иоганн Себастьян Бах\n"Шутка"', style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 25,),)
              ),
            ),
          ),],
      ),
    );
  }
}

class Moonlight extends StatelessWidget {
  const Moonlight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const YoutubePlayerExample(
        videourl: "https://www.youtube.com/watch?v=605__YZu6zc",
        title: 'Людвиг ван Бетховен\n"Лунная соната"',
        imageurl: 'moonlight/Moonlight-1.jpg');
  }
}

class Joke extends StatelessWidget {
  const Joke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const YoutubePlayerExample(
        videourl: "https://www.youtube.com/watch?v=gyMtlvOcojU&t=5s",
        title: 'Иоганн Себастьян Бах\n"Шутка"',
        imageurl: 'joke/Joke-1.jpg');
  }
}

