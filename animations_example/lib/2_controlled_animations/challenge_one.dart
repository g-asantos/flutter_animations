import 'package:flutter/material.dart';

class ControlledChallengeOne extends StatefulWidget {
  const ControlledChallengeOne({Key? key}) : super(key: key);

  @override
  _ControlledChallengeOneState createState() => _ControlledChallengeOneState();
}

class _ControlledChallengeOneState extends State<ControlledChallengeOne>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Alignment> alignmentAnimation;
  late Animation<ShapeBorder?> shapeBorderAnimation;

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

    alignmentAnimation = AlignmentTween(
      begin: Alignment.bottomRight,
      end: Alignment.topCenter,
    ).animate(controller);

    shapeBorderAnimation = ShapeBorderTween(
      begin: CircleBorder(),
      end: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
    ).animate(controller);

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
                alignment: alignmentAnimation.value,
                child: FloatingActionButton(
                  shape: shapeBorderAnimation.value,
                  onPressed: () {
                    toggle();
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
