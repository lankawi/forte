import 'package:flutter/material.dart';
import 'package:forte_v2/myapp_icons.dart';
import 'package:forte_v2/screens/home_screen.dart';

class Result extends StatelessWidget {

  final int count;
  final int total;
  final void Function() onClearState;

  const Result({Key? key,
    required this.count,
    required this.total,
    required this.onClearState
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String msg = '';

    if (0 <= count && count <= 3) {
      msg = 'Результат неудовлетворительный.\n Прочти теорию еще раз и обрати внимание на свои ошибки!';
    } else if (4 <= count && count <= 7) {
      msg = 'Результат удовлетворительный.\n Прочти теорию еще раз!';
    } else {
      msg = 'Результат отличный.\n Ты молодец!';
    }

    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          const Icon(Myapp.trophy, color: Colors.amber, size: 100,),
          Text(
            msg,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 30,),
          ),
          const Divider(
            color: Colors.amber,
            thickness: 2,
          ),
          Text(
            'Верных ответов: $count из $total',
            style: const TextStyle(
                color: Colors.brown,
                fontSize: 25
            ),
          ),
          const Divider(
            color: Colors.amber,
            thickness: 2,
          ),

          Center(
            child: TextButton(
              onPressed: onClearState,
              child: Row(
                children: const [
                  Icon(Icons.restart_alt, color: Colors.amber, size: 28,),
                  Text(' Пройти тест ещё раз', style: TextStyle(color: Colors.amber, fontSize: 28),),
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: const [
                  Icon(Myapp.home, size: 28, color:Colors.amber),
                  Text(' Главная страница', style: TextStyle(color: Colors.amber, fontSize: 28),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
