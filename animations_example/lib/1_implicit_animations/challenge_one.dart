import 'package:flutter/material.dart';

class ChallengeOne extends StatefulWidget {
  const ChallengeOne({Key? key}) : super(key: key);

  @override
  State<ChallengeOne> createState() => _ChallengeOneState();
}

class _ChallengeOneState extends State<ChallengeOne> {
  bool isExpanded = false;
  final duration = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animações implícitas')),
      body: AnimatedAlign(
        duration: duration,
        alignment: isExpanded ? Alignment.topCenter : Alignment.bottomRight,
        child: FloatingActionButton(
          shape: isExpanded
              ? BeveledRectangleBorder(borderRadius: BorderRadius.zero)
              : null,
          onPressed: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
        ),
      ),
    );
  }
}
