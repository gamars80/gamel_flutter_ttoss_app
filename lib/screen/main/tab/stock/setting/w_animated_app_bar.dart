import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/common/widget/w_arrow.dart';

class AnimatedAppBar extends StatefulWidget {
  final String title;
  final ScrollController controller;
  final AnimationController animationController;

  const AnimatedAppBar(this.title, {Key? key, required this.controller, required this.animationController})
      : super(key: key);

  @override
  State<AnimatedAppBar> createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AnimatedAppBar>{
  Duration get duration => 10.ms;
  double scrollPosition = 0;

  late CurvedAnimation animation = CurvedAnimation(parent: widget.animationController, curve: Curves.bounceInOut);
  //ColorTween(end: Colors.red,begin: Colors.blue).animate(controller);

  @override
  void initState() {
    // controller.forward();
    // controller.reverse();
    // controller.repeat();
    // controller.animateTo(target)
    // controller.animateBack(target)
    widget.animationController.addListener(() {
      setState(() {

      });
    });

    widget.controller.addListener(() {
      setState(() {
        scrollPosition = widget.controller.position.pixels;
      });
    });
    // TODO: implement initState
    super.initState();
  }

  bool get isTriggered => scrollPosition > 80;

  double getValue(double initial, double target) {
    if (isTriggered) {
      return target;
    }
    double fraction = scrollPosition / 80;

    return initial + (target - initial) * fraction;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.black,
      child: SafeArea(
        child: Stack(
          children: [
            Tap(
                onTap: () {
                  Nav.pop(context);
                },
                child: Arrow(
                  direction: AxisDirection.left,
                )).p20(),
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.only(
                  left: getValue(20, 50), top: getValue(50, 15)),
              child: AnimatedDefaultTextStyle(
                  child: widget.title.text.color(Colors.white).make(),
                  style: TextStyle(
                      fontSize: getValue(30, 18), fontWeight: FontWeight.bold),
                  duration: duration),
            ),
            Positioned(
              left: animation.value * 200,
              // alignment: Alignment.topRight,
              child: TweenAnimationBuilder<Color?>(
            duration: 1000.ms,
            tween: ColorTween(
                begin: Colors.green,
                end: isTriggered ? Colors.orange : Colors.green),
            builder: (context, value, child) => ColorFiltered(
              colorFilter: ColorFilter.mode(
                  value ?? Colors.green, BlendMode.modulate),
              child: child,
            ),
            child: Image.asset(
              "$basePath/icon/map_point.png",
              height: 60,
              // colorBlendMode: BlendMode.modulate,
            ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
