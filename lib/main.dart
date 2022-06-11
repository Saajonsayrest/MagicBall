import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:math';

final _random = Random();
void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.redAccent,
          appBar: AppBar(
            title: Center(
              child: Text('ASK ME ANYTHING'),
            ),
            backgroundColor: Colors.teal,
          ),
          body: magicball(),
        ),
      ),
    );

class magicball extends StatefulWidget {
  const magicball({Key? key}) : super(key: key);

  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  int balls = 1;
  void func() {
    setState(() {
      balls = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: TextButton(
          onPressed: () {
            func();

            print('Ball is touched');
          },
          child: Center(
            child: Image.asset('images/ball$balls.png'),
          ),
        ))
      ],
    );
  }
}
