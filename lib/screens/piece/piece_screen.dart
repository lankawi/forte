import 'package:flutter/material.dart';
import 'package:forte_v2/screens/piece/piece_classic_screen.dart';
import 'package:forte_v2/screens/piece/piece_modern_screen.dart';

class PieceScreen extends StatelessWidget {
  const PieceScreen({super.key});

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
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const PieceClassicScreen()));},
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
                    child: Text('Классика', style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 25,),),
                  ),
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const PieceModernScreen()));},
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
                  child: Text('Современные', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 25,),)
              ),
            ),
          ),],
      ),
    );
  }
}