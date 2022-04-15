library phlox_animations;
import 'package:flutter/material.dart';
part 'src/utils/phlox_animations_value.dart';
part 'src/utils/phlox_animations_functions.dart';
part 'src/controllers/phlox_animations_controller.dart';
part 'src/pages/phlox_animations_page.dart';
part 'src/pages/phlox_custom_animations_page.dart';
part 'src/pages/phlox_animations_builder_page.dart';


//
// import 'package:flutter/cupertino.dart';
// import 'package:simple_animations/simple_animations.dart';
//
// /// [_PhloxAnimeType] for change 5 mode of
// /// animation list
// /// [_PhloxAnimeType.fade] for widget opacity
// /// [_PhloxAnimeType.moveX] for widget move
// /// [_PhloxAnimeType.moveY] for widget move
// /// [_PhloxAnimeType.rotate] for widget rotate
// /// [_PhloxAnimeType.scale] for widget scale
// /// [_PhloxAnimeType.progress] for widget progress
// enum _PhloxAnimeType { fade, moveX, moveY, rotate, scale, progress }
//
// /// [OnStart] is animation start function
// typedef OnStart = Function();
//
// /// [OnProgress] is animation end function
// typedef OnProgress = Function(double progress);
//
// /// [OnComplete] is animation progress function
// typedef OnComplete = Function();
//
// class PhloxAnimations extends StatefulWidget {
//   /// [duration] is time from start to end of animation
//   /// [delay] is time to delay start animation
//   /// [child] is required and you can add your widget into
//   /// child and your child animate
//   /// [fromOpacity]s value from 0 to 1 and change widget alpha(Opacity)
//   /// [toOpacity]s value from 0 to 1 and change widget alpha(Opacity)
//   /// [fromX] for move widget from x
//   /// [fromY] for move widget from y
//   /// [toX] for move widget to x
//   /// [toY] for move widget to Y
//   /// [fromScale] for scale widget from widgets current scale
//   /// [toScale] for scale widget from widgets current scale
//   /// [fromDegrees] for rotate widget from widgets current angle
//   /// [toDegrees] for rotate widget to widgets current angle
//   /// [onStart] is listener start animation
//   /// [onComplete] is listener end animation
//   /// [onProgress] is listener progress animation
//
//   final Duration? duration;
//   final Duration? delay;
//   final Widget? child;
//   final double? fromX;
//   final double? fromY;
//   final double? toX;
//   final double? toY;
//   final double? fromOpacity;
//   final double? toOpacity;
//   final double? fromScale;
//   final double? toScale;
//   final double? fromDegrees;
//   final double? toDegrees;
//   final OnStart? onStart;
//   final OnComplete? onComplete;
//   final OnProgress? onProgress;
//
//   /// [PhloxAnimations] is very useful and simple animation
//   /// this animation required [duration] and [child]
//   PhloxAnimations({
//     Key? key,
//     required this.child,
//     required this.duration,
//     this.delay = const Duration(seconds: 0),
//     this.fromOpacity = 1.0,
//     this.toOpacity = 1.0,
//     this.fromX = 0.0,
//     this.fromY = 0.0,
//     this.toX = 0.0,
//     this.toY = 0.0,
//     this.fromScale = 1.0,
//     this.toScale = 1.0,
//     this.fromDegrees = 0,
//     this.toDegrees = 0,
//     this.onStart,
//     this.onComplete,
//     this.onProgress,
//   }) : super(key: key) {
//     assert(duration != null, "Error ==> duration is null");
//     assert(fromOpacity != null, "Error ==> fromOpacity is null");
//     assert(toOpacity != null, "Error ==> toOpacity is null");
//     assert(fromX != null, "Error ==> fromX is null");
//     assert(toX != null, "Error ==> toX is null");
//     assert(fromY != null, "Error ==> fromY is null");
//     assert(toY != null, "Error ==> toY is null");
//     assert(fromScale != null, "Error ==> fromScale is null");
//     assert(toScale != null, "Error ==> toScale is null");
//     assert(fromDegrees != null, "Error ==> fromDegrees is null");
//     assert(toDegrees != null, "Error ==> toDegrees is null");
//     assert(
//         fromOpacity! <= 1,
//         "fromOpacity must lower than 1 and higher than 0\n"
//         "Error ==> opacity : 0.0 < fromOpacity > 1.0\n"
//         "Fix ==> opacity : 0.0 > fromOpacity < 1.0");
//     assert(
//         toOpacity! >= 0,
//         "toOpacity must lower than 1.0 and higher than 0.0\n"
//         "Error opacity : 0.0 < toOpacity > 1.0");
//   }
//
//   /// [PhloxAnimations.opacity] is customized for opacity animation
//   /// and you can add extra animation property to your widget
//   /// this animation required [duration] and [child]
//   PhloxAnimations.opacity({
//     Key? key,
//     required this.child,
//     required this.duration,
//     required this.fromOpacity,
//     required this.toOpacity,
//     this.fromX = 1.0,
//     this.fromY = 1.0,
//     this.toX = 1.0,
//     this.toY = 1.0,
//     this.delay = const Duration(seconds: 0),
//     this.fromScale = 1.0,
//     this.toScale = 1.0,
//     this.fromDegrees = 0,
//     this.toDegrees = 0,
//     this.onStart,
//     this.onComplete,
//     this.onProgress,
//   }) : super(key: key) {
//     assert(duration != null, "Error ==> duration is null");
//     assert(fromOpacity != null, "Error ==> fromOpacity is null");
//     assert(toOpacity != null, "Error ==> toOpacity is null");
//     assert(fromX != null, "Error ==> fromX is null");
//     assert(toX != null, "Error ==> toX is null");
//     assert(fromY != null, "Error ==> fromY is null");
//     assert(toY != null, "Error ==> toY is null");
//     assert(fromScale != null, "Error ==> fromScale is null");
//     assert(toScale != null, "Error ==> toScale is null");
//     assert(fromDegrees != null, "Error ==> fromDegrees is null");
//     assert(toDegrees != null, "Error ==> toDegrees is null");
//     assert(
//         fromOpacity! < 1.0,
//         "fromOpacity must lower than 1 and higher than 0\n"
//         "Error ==> opacity : 0.0 < fromOpacity > 1.0\n"
//         "Fix ==> opacity : 0.0 > fromOpacity < 1.0");
//     assert(
//         toOpacity! > 0,
//         "toOpacity must lower than 1.0 and higher than 0.0\n"
//         "Error opacity : 0.0 < toOpacity > 1.0");
//   }
//
//   /// [PhloxAnimations.move] is customized for move animation
//   /// and you can add extra animation property to your widget
//   /// this animation required [duration] and [child]
//   PhloxAnimations.move({
//     Key? key,
//     required this.child,
//     required this.duration,
//     required this.fromX,
//     required this.fromY,
//     required this.toX,
//     required this.toY,
//     this.delay = const Duration(seconds: 0),
//     this.fromOpacity = 1.0,
//     this.toOpacity = 1.0,
//     this.fromScale = 1.0,
//     this.toScale = 1.0,
//     this.fromDegrees = 0,
//     this.toDegrees = 0,
//     this.onStart,
//     this.onComplete,
//     this.onProgress,
//   }) : super(key: key) {
//     assert(duration != null, "Error ==> duration is null");
//     assert(fromOpacity != null, "Error ==> fromOpacity is null");
//     assert(toOpacity != null, "Error ==> toOpacity is null");
//     assert(fromX != null, "Error ==> fromX is null");
//     assert(toX != null, "Error ==> toX is null");
//     assert(fromY != null, "Error ==> fromY is null");
//     assert(toY != null, "Error ==> toY is null");
//     assert(fromScale != null, "Error ==> fromScale is null");
//     assert(toScale != null, "Error ==> toScale is null");
//     assert(fromDegrees != null, "Error ==> fromDegrees is null");
//     assert(toDegrees != null, "Error ==> toDegrees is null");
//     assert(
//         fromOpacity! < 1,
//         "fromOpacity must lower than 1 and higher than 0\n"
//         "Error ==> opacity : 0.0 < fromOpacity > 1.0\n"
//         "Fix ==> opacity : 0.0 > fromOpacity < 1.0");
//     assert(
//         toOpacity! > 0,
//         "toOpacity must lower than 1.0 and higher than 0.0\n"
//         "Error opacity : 0.0 < toOpacity > 1.0");
//   }
//
//   /// [PhloxAnimations.rotate] is customized for rotate animation
//   /// and you can add extra animation property to your widget
//   /// this animation required [duration] and [child]
//   PhloxAnimations.rotate({
//     Key? key,
//     required this.child,
//     required this.duration,
//     required this.fromDegrees,
//     required this.toDegrees,
//     this.delay = const Duration(seconds: 0),
//     this.fromX = 0.0,
//     this.fromY = 0.0,
//     this.toX = 0.0,
//     this.toY = 0.0,
//     this.fromOpacity = 1.0,
//     this.toOpacity = 1.0,
//     this.fromScale = 1.0,
//     this.toScale = 1.0,
//     this.onStart,
//     this.onComplete,
//     this.onProgress,
//   }) : super(key: key) {
//     assert(duration != null, "Error ==> duration is null");
//     assert(fromOpacity != null, "Error ==> fromOpacity is null");
//     assert(toOpacity != null, "Error ==> toOpacity is null");
//     assert(fromX != null, "Error ==> fromX is null");
//     assert(toX != null, "Error ==> toX is null");
//     assert(fromY != null, "Error ==> fromY is null");
//     assert(toY != null, "Error ==> toY is null");
//     assert(fromScale != null, "Error ==> fromScale is null");
//     assert(toScale != null, "Error ==> toScale is null");
//     assert(fromDegrees != null, "Error ==> fromDegrees is null");
//     assert(toDegrees != null, "Error ==> toDegrees is null");
//     assert(
//         fromOpacity! < 1,
//         "fromOpacity must lower than 1 and higher than 0\n"
//         "Error ==> opacity : 0.0 < fromOpacity > 1.0\n"
//         "Fix ==> opacity : 0.0 > fromOpacity < 1.0");
//     assert(
//         toOpacity! > 0,
//         "toOpacity must lower than 1.0 and higher than 0.0\n"
//         "Error opacity : 0.0 < toOpacity > 1.0");
//   }
//
//   /// [PhloxAnimations.scale] is customized for scale animation
//   /// and you can add extra animation property to your widget
//   /// this animation required [duration] and [child]
//   PhloxAnimations.scale({
//     Key? key,
//     required this.child,
//     required this.duration,
//     required this.fromScale,
//     required this.toScale,
//     this.delay = const Duration(seconds: 0),
//     this.fromDegrees = 0,
//     this.toDegrees = 0,
//     this.fromX = 0.0,
//     this.fromY = 0.0,
//     this.toX = 0.0,
//     this.toY = 0.0,
//     this.fromOpacity = 1.0,
//     this.toOpacity = 1.0,
//     this.onStart,
//     this.onComplete,
//     this.onProgress,
//   }) : super(key: key) {
//     assert(duration != null, "Error ==> duration is null");
//     assert(fromOpacity != null, "Error ==> fromOpacity is null");
//     assert(toOpacity != null, "Error ==> toOpacity is null");
//     assert(fromX != null, "Error ==> fromX is null");
//     assert(toX != null, "Error ==> toX is null");
//     assert(fromY != null, "Error ==> fromY is null");
//     assert(toY != null, "Error ==> toY is null");
//     assert(fromScale != null, "Error ==> fromScale is null");
//     assert(toScale != null, "Error ==> toScale is null");
//     assert(fromDegrees != null, "Error ==> fromDegrees is null");
//     assert(toDegrees != null, "Error ==> toDegrees is null");
//     assert(
//         fromOpacity! < 1,
//         "fromOpacity must lower than 1 and higher than 0\n"
//         "Error ==> opacity : 0.0 < fromOpacity > 1.0\n"
//         "Fix ==> opacity : 0.0 > fromOpacity < 1.0");
//     assert(
//         toOpacity! > 0,
//         "toOpacity must lower than 1.0 and higher than 0.0\n"
//         "Error opacity : 0.0 < toOpacity > 1.0");
//   }
//
//   @override
//   State<PhloxAnimations> createState() => _PhloxAnimationsState();
// }
//
// class _PhloxAnimationsState extends State<PhloxAnimations> {
//
//   @override
//   void initState() {
//
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     /// [_tween] is animation listener
//     final _tween = TimelineTween<_PhloxAnimeType>()
//       ..addScene(begin: const Duration(milliseconds: 0), end: widget.duration)
//           .animate(_PhloxAnimeType.progress, tween: Tween(begin: 0, end: 1))
//       ..addScene(begin: const Duration(milliseconds: 0), end: widget.duration)
//           .animate(_PhloxAnimeType.moveX, tween: Tween(begin: widget.fromX, end: widget.toX))
//       ..addScene(begin: const Duration(milliseconds: 0), end: widget.duration)
//           .animate(_PhloxAnimeType.moveY, tween: Tween(begin: widget.fromY, end: widget.toY))
//       ..addScene(begin: const Duration(milliseconds: 0), end: widget.duration).animate(
//           _PhloxAnimeType.rotate,
//           tween: Tween(begin: widget.fromDegrees, end: widget.toDegrees))
//       ..addScene(begin: const Duration(milliseconds: 0), end: widget.duration).animate(
//           _PhloxAnimeType.scale,
//           tween: Tween(begin: widget.fromScale, end: widget.toScale))
//       ..addScene(begin: const Duration(milliseconds: 0), end: widget.duration).animate(
//           _PhloxAnimeType.fade,
//           tween: Tween(begin: widget.fromOpacity, end: widget.toOpacity));
//
//     return PlayAnimation<TimelineValue<_PhloxAnimeType>>(
//         tween: _tween,
//         duration: _tween.duration,
//         child: widget.child,
//         delay: widget.delay ?? const Duration(seconds: 0),
//         onStart: () => widget.onStart?.call(),
//         onComplete: () => widget.onComplete?.call(),
//         builder: (context, child, animation) {
//           widget.onProgress?.call(double.parse(
//               animation.get(_PhloxAnimeType.progress).toStringAsFixed(2)));
//           return Opacity(
//             opacity: animation.get(_PhloxAnimeType.fade),
//             child: RotationTransition(
//               turns: AlwaysStoppedAnimation(
//                   animation.get(_PhloxAnimeType.rotate) / 360),
//               child: Transform.scale(
//                 scale: animation.get(_PhloxAnimeType.scale),
//                 child: Transform.translate(
//                   offset: Offset(animation.get(_PhloxAnimeType.moveX),
//                       animation.get(_PhloxAnimeType.moveY)),
//                   child: child,
//                 ),
//               ),
//             ),
//           );
//         });
//   }
// }
