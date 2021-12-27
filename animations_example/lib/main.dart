import 'package:flutter/material.dart';
import 'package:incompanies/1_implicit_animations/challenge_one.dart';
import 'package:incompanies/1_implicit_animations/challenge_two.dart';
import 'package:incompanies/2_controlled_animations/challenge_one.dart';
import 'package:incompanies/2_controlled_animations/challenge_two.dart';

import '1_implicit_animations/gesture_page.dart';
import '1_implicit_animations/implicit_animations_page.dart';
import '1_implicit_animations/timer_page.dart';
import '2_controlled_animations/controlled_animations_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(title: Text('Flutterando Masterclass')),
          body: Column(
            children: [
              ListTile(
                title: Text('1 - Animações implícitas'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImplicitAnimationsPage(),
                  ),
                ),
              ),
              ListTile(
                title: Text('1 - Animações implícitas: Timer'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TimerPage(),
                  ),
                ),
              ),
              ListTile(
                title: Text('1 - Animações implícitas: Gestos'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GesturePage(),
                  ),
                ),
              ),
              ListTile(
                title: Text('1 - Animações implícitas: Exercício 1'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChallengeOne(),
                  ),
                ),
              ),
              ListTile(
                title: Text('1 - Animações implícitas: Exercício 2'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChallengeTwo(),
                  ),
                ),
              ),
              ListTile(
                title: Text('2 - Animações Controladas'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ControlledAnimationsPage(),
                  ),
                ),
              ),
              ListTile(
                title: Text('2 - Animações Controladas: Exercício 1'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ControlledChallengeOne(),
                  ),
                ),
              ),
              ListTile(
                title: Text('2 - Animações Controladas: Exercicio 2'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ControlledChallengeTwo(),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
