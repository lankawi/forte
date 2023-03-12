import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:forte_v2/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:forte_v2/myapp_icons.dart';
import 'package:forte_v2/screens/keyboard_screen.dart';
import 'package:forte_v2/screens/tests_screen.dart';

import '../widget/home_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('Forte', style: TextStyle(color: Colors.white, fontSize: 28),),
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 15,),
            GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => TestsScreen()));},
              child: HomeContainer(text1: ' Сольфеджио', text2: ':3 урока', iconka: Myapp.note_beamed, ),
            ),
            GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => TestsScreen()));},
              child: HomeContainer(text1: '  Муз. литература', text2: ':2 урока', iconka: Myapp.book_open, ),
            ),
            GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => TestsScreen()));},
              child: HomeContainer(text1: ' Тесты', text2: ':2 теста', iconka: Myapp.jigsaw_piece, ),
            ),
            GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Piano()));},
              child: HomeContainer(text1: ' Клавиши', text2: ' ', iconka: Myapp.library_music, ),
            ),
            GestureDetector(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => TestsScreen()));},
              child: HomeContainer(text1: ' Произведения', text2: ':4 произведения', iconka: Myapp.music, ),
            ),
          ],
      ),
    );
  }

  // Widget _homeContainer(
  //     String text1,
  //     String text2
  //     ) =>
}
