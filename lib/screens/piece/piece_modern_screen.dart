import 'package:flutter/material.dart';
import 'package:forte_v2/widget/piece_widget.dart';

class PieceModernScreen extends StatelessWidget {
  const PieceModernScreen({super.key});

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
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const ElegyForArctic()));},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber, width: 2),
                borderRadius: BorderRadius.circular(15),
                color: Colors.yellow[200],
              ),
              child: const Center(
                child: Text('Ludovico Einaudi\n"Elegy for the Arctic"', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 25,),),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const UnaMattina()));},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.amber, width: 2),
                borderRadius: BorderRadius.circular(15),
                color: Colors.yellow[200],
              ),
              child: const Center (
                  child: Text('Ludovico Einaudi\n"Una Mattina"', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 25,),)
              ),
            ),
          ),],
      ),
    );
  }
}

class ElegyForArctic extends StatelessWidget {
  const ElegyForArctic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const YoutubePlayerExample(
        videourl: "https://www.youtube.com/watch?v=2DLnhdnSUVs",
        title: 'Ludovico Einaudi\n"Elegy for the Arctic"',
        imageurl: 'Elegy-1.jpg');
  }
}

class UnaMattina extends StatelessWidget {
  const UnaMattina({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const YoutubePlayerExample(
        videourl: "https://www.youtube.com/watch?v=MPlkHxFA-Qg",
        title: 'Ludovico Einaudi\n"Una Mattina"',
        imageurl: 'Una-1.jpg');
  }
}

