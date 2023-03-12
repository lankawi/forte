import 'package:flutter/material.dart';

import '../myapp_icons.dart';

class HomeContainer extends StatelessWidget {

  final String text1;
  final String text2;
  final IconData iconka;

  HomeContainer({Key? key,
    required this.text1,
    required this.text2,
    required this.iconka,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.amber, width: 2),
        borderRadius: BorderRadius.circular(15),
        color: Colors.yellow[200],
      ),
      child: Row(
        children: [
          Icon(iconka as IconData?, color: Colors.amber, size: 28,),
          Text(
            text1,
            style: TextStyle(
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
