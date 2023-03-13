import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:forte_v2/myapp_icons.dart';
import 'package:forte_v2/screens/keyboard_screen.dart';
import 'package:forte_v2/screens/muslit/muslit_screen.dart';
import 'package:forte_v2/screens/piece/piece_screen.dart';
import 'package:forte_v2/screens/solfeggio/solfeggio_screen.dart';

import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/tests/tests_screen.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(                           //гамбургер-меню
      backgroundColor: Colors.yellow[100],
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: const [
                  Icon(Myapp.home, size: 28, color:Colors.amber),
                  SizedBox(width: 20,),
                  Text('Главная страница', style: TextStyle(fontSize: 25),),
                ],
              ),
            ),
          ),
          const Divider(thickness: 2),                             // черта -----------
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const SolfeggioScreen()));},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: const [
                  Icon(Myapp.note_beamed, size: 28, color:Colors.amber),
                  SizedBox(width: 20,),
                  Text('Сольфеджио', style: TextStyle(fontSize: 25),),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const MuslitScreen()));},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: const [
                  Icon(Myapp.book_open, size: 28, color:Colors.amber),
                  SizedBox(width: 20,),
                  Text('Муз. литература', style: TextStyle(fontSize: 25),),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const TestsScreen()));},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: const [
                  Icon(Myapp.jigsaw_piece, size: 28, color:Colors.amber),
                  SizedBox(width: 20,),
                  Text('Тесты', style: TextStyle(fontSize: 25),),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => TestsScreen()));},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: const [
                  Icon(Myapp.library_music, size: 28, color:Colors.amber),
                  SizedBox(width: 20,),
                  Text('Клавиши', style: TextStyle(fontSize: 25),),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const PieceScreen()));},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                children: const [
                  Icon(Myapp.music, size: 28, color:Colors.amber),
                  SizedBox(width: 20,),
                  Text('Произведения', style: TextStyle(fontSize: 25),),
                ],
              ),
            ),
          ),
          const Divider(thickness: 2),
          ListTile(
            leading: Icon(Icons.logout, size: 28, color:Colors.amber),
            title: Text('Выйти', style: TextStyle(fontSize: 25),),
            onTap: () => logout(context),
          )
        ],
      ),
    );
  }
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }
}