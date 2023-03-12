import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:forte_v2/myapp_icons.dart';
import 'package:forte_v2/screens/keyboard_screen.dart';

import '../screens/home_screen.dart';
import '../screens/login_screen.dart';
import '../screens/tests_screen.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(                           //гамбургер-меню
      backgroundColor: Colors.yellow[100],
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));},
            child: Row(
              children: const [
                Icon(Myapp.home, size: 28, color:Colors.amber),
                Text('Главная страница', style: TextStyle(fontSize: 25),),
              ],
            ),
          ),
          const Divider(thickness: 2),                             // черта -----------
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));},
            child: Row(
              children: const [
                Icon(Myapp.note_beamed, size: 28, color:Colors.amber),
                Text('Сольфеджио', style: TextStyle(fontSize: 25),),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));},
            child: Row(
              children: const [
                Icon(Myapp.book_open, size: 28, color:Colors.amber),
                Text('Муз. литература', style: TextStyle(fontSize: 25),),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => TestsScreen()));},
            child: Row(
              children: const [
                Icon(Myapp.jigsaw_piece, size: 28, color:Colors.amber),
                Text('Тесты', style: TextStyle(fontSize: 25),),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Piano()));},
            child: Row(
              children: const [
                Icon(Myapp.library_music, size: 28, color:Colors.amber),
                Text('Клавиши', style: TextStyle(fontSize: 25),),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));},
            child: Row(
              children: const [
                Icon(Myapp.music, size: 28, color:Colors.amber),
                Text('Произведения', style: TextStyle(fontSize: 25),),
              ],
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