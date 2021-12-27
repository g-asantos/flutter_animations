import 'package:flutter/material.dart';

class ControlledChallengeTwo extends StatefulWidget {
  const ControlledChallengeTwo({Key? key}) : super(key: key);

  @override
  _ControlledChallengeTwoState createState() => _ControlledChallengeTwoState();
}

class _ControlledChallengeTwoState extends State<ControlledChallengeTwo>
    with TickerProviderStateMixin {
  late AnimationController controller;

  void toggle() {
    if (controller.value == 0) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    controller.addListener(() {});
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Controlled Animations')),
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return GestureDetector(
              onTap: toggle,
              child: Align(
                child: ListView(
                  children: [
                    controller.value < 0.2
                        ? ListTile(
                            title: Text("ExpansionTile2"),
                            subtitle: Text("Custom expansion arrow icon"),
                            trailing: Icon(Icons.arrow_drop_down_circle))
                        : const ListTile(
                            title: Text("ExpansionTile2"),
                            subtitle: Text("Custom expansion arrow icon"),
                            trailing: Icon(Icons.arrow_drop_down),
                          ),
                    controller.value < 0.2
                        ? ListTile(title: Text("This is tile number 2"))
                        : SizedBox()
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
