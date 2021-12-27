import 'package:flutter/material.dart';

class ChallengeTwo extends StatefulWidget {
  const ChallengeTwo({Key? key}) : super(key: key);

  @override
  State<ChallengeTwo> createState() => _ChallengeTwoState();
}

class _ChallengeTwoState extends State<ChallengeTwo> {
  bool isExpanded = false;
  final duration = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: ListView(
            children: [
              isExpanded
                  ? const ListTile(
                      title: Text("ExpansionTile2"),
                      subtitle: Text("Custom expansion arrow icon"),
                      trailing: Icon(Icons.arrow_drop_down_circle),
                    )
                  : const ListTile(
                      title: Text("ExpansionTile2"),
                      subtitle: Text("Custom expansion arrow icon"),
                      trailing: Icon(Icons.arrow_drop_down),
                    ),
              isExpanded
                  ? const ListTile(title: Text("This is tile number 2"))
                  : SizedBox(),
            ],
          )),
    );
  }
}
