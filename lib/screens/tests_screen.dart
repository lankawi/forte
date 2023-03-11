import 'package:flutter/material.dart';
import 'package:forte_v2/screens/test_easy_screen.dart';

class TestsScreen extends StatelessWidget {
  const TestsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Text('Тесты', style: TextStyle(color: Colors.white),),
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
                          TestsEasyScreen()));
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
                'Легкий',
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