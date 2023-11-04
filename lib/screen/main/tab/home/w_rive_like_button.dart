import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:rive/rive.dart';

class RiveLikeButton extends StatefulWidget {
  final bool isLike;
  final void Function(bool isLike) onTabLike;

  const RiveLikeButton(this.isLike,{Key? key, required this.onTabLike}) : super(key: key);

  @override
  State<RiveLikeButton> createState() => _RiveLikeButtonState();
}

class _RiveLikeButtonState extends State<RiveLikeButton> {
  late StateMachineController controller;
  late SMIBool smiPressed;
  late SMIBool smiHover;

  @override
  void didUpdateWidget(covariant RiveLikeButton oldWidget) {
    if(oldWidget.isLike != widget.isLike) {
      smiPressed.value = widget.isLike;
      smiHover.value = widget.isLike;

    }
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: () {
        widget.onTabLike(!widget.isLike);
      },
      child: RiveAnimation.asset("$baseRivePath/light_like2.riv",
      stateMachines: ['State Machine 1'],
      onInit: (Artboard art){
        controller = StateMachineController.fromArtboard(art, 'State Machine 1')!;
        controller.isActive = true;
        art.addController(controller);
        smiPressed = controller.findInput<bool>('Pressed') as SMIBool;
        smiHover = controller.findInput<bool>('Hover') as SMIBool;
      },
      ),
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