import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:forte_v2/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:forte_v2/screens/tests_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('Forte', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          TestsScreen()));
            },
            child: Container(
              margin: const EdgeInsets.all(20.0),
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                // border: Border.all(1),
                // borderRadius: BorderRadius.circular(18.0),
              ),
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Сольфеджио',
                style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
