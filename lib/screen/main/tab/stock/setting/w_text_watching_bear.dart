import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:rive/rive.dart';

class TextWatchingBearController {
  late void Function() runSuccessAnimation;
  late void Function() runFailAnimation;
}

class TextWatchingBear extends StatefulWidget {
  final bool check;
  final bool handsUp;
  final double look;
  final TextWatchingBearController controller;

  const TextWatchingBear({Key? key, required this.check, required this.handsUp, required this.look, required this.controller}) : super(key: key);

  @override
  State<TextWatchingBear> createState() => _TextWatchingBearState();
}

class _TextWatchingBearState extends State<TextWatchingBear> {
  late StateMachineController controller;
  late SMIBool smiCheck;
  late SMIBool smiHandsUp;
  late SMINumber smiLook;
  late SMITrigger smiSuccess;
  late SMITrigger smiFail;

  @override
  void initState() {
    // TODO: implement initState
    widget.controller.runSuccessAnimation = () {
      smiSuccess.fire();
    };

    widget.controller.runFailAnimation = () {
      smiFail.fire();
    };

    super.initState();
  }
  @override
  void didUpdateWidget(covariant TextWatchingBear oldWidget) {
    if(oldWidget.check != widget.check) {
      smiCheck.value = widget.check;
    }

    if(oldWidget.handsUp != widget.handsUp) {
      smiHandsUp.value = widget.handsUp;
    }

    if(oldWidget.look != widget.look) {
      smiLook.value = widget.look;
    }
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return RiveAnimation.asset("$baseRivePath/login_screen_character.riv",
    stateMachines: ['State Machine 1'],
    onInit: (Artboard art){
      controller = StateMachineController.fromArtboard(art, 'State Machine 1')!;
      controller.isActive = true;
      art.addController(controller);
      smiCheck = controller.findInput<bool>('Check') as SMIBool;
      smiHandsUp = controller.findInput<bool>('hands_up') as SMIBool;
      smiLook = controller.findInput<double>('Look') as SMINumber;
      smiSuccess = controller.findInput<bool>('success') as SMITrigger;
      smiFail = controller.findInput<bool>('fail') as SMITrigger;

    },
    );
  }
}

//
// class PlayPauseAnimation extends StatefulWidget {
//   const PlayPauseAnimation({Key? key}) : super(key: key);
//
//   @override
//   _PlayPauseAnimationState createState() => _PlayPauseAnimationState();
// }
//
// class _PlayPauseAnimationState extends State<PlayPauseAnimation> {
//   // Controller for playback
//   late RiveAnimationController _controller;
//
//   // Toggles between play and pause animation states
//   void _togglePlay() =>
//       setState(() => _controller.isActive = !_controller.isActive);
//
//   /// Tracks if the animation is playing by whether controller is running
//   bool get isPlaying => _controller.isActive;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = SimpleAnimation('idle');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: RiveAnimation.network(
//           'https://cdn.rive.app/animations/vehicles.riv',
//           controllers: [_controller],
//           // Update the play state when the widget's initialized
//           onInit: (_) => setState(() {}),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _togglePlay,
//         tooltip: isPlaying ? 'Pause' : 'Play',
//         child: Icon(
//           isPlaying ? Icons.pause : Icons.play_arrow,
//         ),
//       ),
//     );
//   }
// }