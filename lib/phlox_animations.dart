library phlox_animations;

import 'package:flutter/cupertino.dart';
import 'package:simple_animations/simple_animations.dart';

enum _PhloxAnimeType {
  fade,
  moveX,
  moveY,
  rotate,
  scale,
}

class PhloxAnimations extends StatelessWidget {
  /// [duration] is time from start to end of animation
  /// [delay] is time to delay start animation
  /// [child] is required and you can add your widget into
  /// child and your child animate
  /// [fromOpacity]s value from 0 to 1 and change widget alpha(Opacity)
  /// [toOpacity]s value from 0 to 1 and change widget alpha(Opacity)
  /// [fromX] for move widget from x
  /// [fromY] for move widget from y
  /// [toX] for move widget to x
  /// [toY] for move widget to Y
  /// [fromScale] for scale widget from widgets current scale
  /// [toScale] for scale widget from widgets current scale

  final Duration? duration;
  final Duration? delay;
  final Widget? child;
  final double? fromOpacity;
  final double? toOpacity;
  final double? fromX;
  final double? fromY;
  final double? toX;
  final double? toY;
  final double? fromScale;
  final double? toScale;
  final double? fromDegrees;
  final double? toDegrees;

  PhloxAnimations({
    Key? key,
    required this.child,
    required this.duration,
    this.delay = const Duration(seconds: 0),
    this.fromOpacity = 1.0,
    this.toOpacity = 1.0,
    this.fromX = 0.0,
    this.fromY = 0.0,
    this.toX = 0.0,
    this.toY = 0.0,
    this.fromScale = 1.0,
    this.toScale = 1.0,
    this.fromDegrees = 0,
    this.toDegrees = 0,
  }) : super(key: key) {
    assert(duration != null, "Error ==> duration is null");
    assert(fromOpacity != null, "Error ==> fromOpacity is null");
    assert(toOpacity != null, "Error ==> toOpacity is null");
    assert(fromX != null, "Error ==> fromX is null");
    assert(toX != null, "Error ==> toX is null");
    assert(fromY != null, "Error ==> fromY is null");
    assert(toY != null, "Error ==> toY is null");
    assert(fromScale != null, "Error ==> fromScale is null");
    assert(toScale != null, "Error ==> toScale is null");
    assert(fromDegrees != null, "Error ==> fromDegrees is null");
    assert(toDegrees != null, "Error ==> toDegrees is null");
    assert(
        fromOpacity! <= 1,
        "fromOpacity must lower than 1 and higher than 0\n"
        "Error ==> opacity : 0.0 < fromOpacity > 1.0\n"
        "Fix ==> opacity : 0.0 > fromOpacity < 1.0");
    assert(
        toOpacity! >= 0,
        "toOpacity must lower than 1.0 and higher than 0.0\n"
        "Error opacity : 0.0 < toOpacity > 1.0");
  }

  PhloxAnimations.opacity({
    Key? key,
    required this.child,
    required this.duration,
    required this.fromOpacity,
    required this.toOpacity,
    this.fromX = 1.0,
    this.fromY = 1.0,
    this.toX = 1.0,
    this.toY = 1.0,
    this.delay = const Duration(seconds: 0),
    this.fromScale = 1.0,
    this.toScale = 1.0,
    this.fromDegrees = 0,
    this.toDegrees = 0,
  }) : super(key: key) {
    assert(duration != null, "Error ==> duration is null");
    assert(fromOpacity != null, "Error ==> fromOpacity is null");
    assert(toOpacity != null, "Error ==> toOpacity is null");
    assert(fromX != null, "Error ==> fromX is null");
    assert(toX != null, "Error ==> toX is null");
    assert(fromY != null, "Error ==> fromY is null");
    assert(toY != null, "Error ==> toY is null");
    assert(fromScale != null, "Error ==> fromScale is null");
    assert(toScale != null, "Error ==> toScale is null");
    assert(fromDegrees != null, "Error ==> fromDegrees is null");
    assert(toDegrees != null, "Error ==> toDegrees is null");
    assert(
        fromOpacity! < 1.0,
        "fromOpacity must lower than 1 and higher than 0\n"
        "Error ==> opacity : 0.0 < fromOpacity > 1.0\n"
        "Fix ==> opacity : 0.0 > fromOpacity < 1.0");
    assert(
        toOpacity! > 0,
        "toOpacity must lower than 1.0 and higher than 0.0\n"
        "Error opacity : 0.0 < toOpacity > 1.0");
  }

  PhloxAnimations.move({
    Key? key,
    required this.child,
    required this.duration,
    required this.fromX,
    required this.fromY,
    required this.toX,
    required this.toY,
    this.delay = const Duration(seconds: 0),
    this.fromOpacity = 1.0,
    this.toOpacity = 1.0,
    this.fromScale = 1.0,
    this.toScale = 1.0,
    this.fromDegrees = 0,
    this.toDegrees = 0,
  }) : super(key: key) {
    assert(duration != null, "Error ==> duration is null");
    assert(fromOpacity != null, "Error ==> fromOpacity is null");
    assert(toOpacity != null, "Error ==> toOpacity is null");
    assert(fromX != null, "Error ==> fromX is null");
    assert(toX != null, "Error ==> toX is null");
    assert(fromY != null, "Error ==> fromY is null");
    assert(toY != null, "Error ==> toY is null");
    assert(fromScale != null, "Error ==> fromScale is null");
    assert(toScale != null, "Error ==> toScale is null");
    assert(fromDegrees != null, "Error ==> fromDegrees is null");
    assert(toDegrees != null, "Error ==> toDegrees is null");
    assert(
        fromOpacity! < 1,
        "fromOpacity must lower than 1 and higher than 0\n"
        "Error ==> opacity : 0.0 < fromOpacity > 1.0\n"
        "Fix ==> opacity : 0.0 > fromOpacity < 1.0");
    assert(
        toOpacity! > 0,
        "toOpacity must lower than 1.0 and higher than 0.0\n"
        "Error opacity : 0.0 < toOpacity > 1.0");
  }

  PhloxAnimations.rotate({
    Key? key,
    required this.child,
    required this.duration,
    required this.fromDegrees,
    required this.toDegrees,
    this.delay = const Duration(seconds: 0),
    this.fromX = 0.0,
    this.fromY = 0.0,
    this.toX = 0.0,
    this.toY = 0.0,
    this.fromOpacity = 1.0,
    this.toOpacity = 1.0,
    this.fromScale = 1.0,
    this.toScale = 1.0,
  }) : super(key: key) {
    assert(duration != null, "Error ==> duration is null");
    assert(fromOpacity != null, "Error ==> fromOpacity is null");
    assert(toOpacity != null, "Error ==> toOpacity is null");
    assert(fromX != null, "Error ==> fromX is null");
    assert(toX != null, "Error ==> toX is null");
    assert(fromY != null, "Error ==> fromY is null");
    assert(toY != null, "Error ==> toY is null");
    assert(fromScale != null, "Error ==> fromScale is null");
    assert(toScale != null, "Error ==> toScale is null");
    assert(fromDegrees != null, "Error ==> fromDegrees is null");
    assert(toDegrees != null, "Error ==> toDegrees is null");
    assert(
        fromOpacity! < 1,
        "fromOpacity must lower than 1 and higher than 0\n"
        "Error ==> opacity : 0.0 < fromOpacity > 1.0\n"
        "Fix ==> opacity : 0.0 > fromOpacity < 1.0");
    assert(
        toOpacity! > 0,
        "toOpacity must lower than 1.0 and higher than 0.0\n"
        "Error opacity : 0.0 < toOpacity > 1.0");
  }

  PhloxAnimations.scale({
    Key? key,
    required this.child,
    required this.duration,
    required this.fromScale,
    required this.toScale,
    this.delay = const Duration(seconds: 0),
    this.fromDegrees = 0,
    this.toDegrees = 0,
    this.fromX = 0.0,
    this.fromY = 0.0,
    this.toX = 0.0,
    this.toY = 0.0,
    this.fromOpacity = 1.0,
    this.toOpacity = 1.0,
  }) : super(key: key) {
    assert(duration != null, "Error ==> duration is null");
    assert(fromOpacity != null, "Error ==> fromOpacity is null");
    assert(toOpacity != null, "Error ==> toOpacity is null");
    assert(fromX != null, "Error ==> fromX is null");
    assert(toX != null, "Error ==> toX is null");
    assert(fromY != null, "Error ==> fromY is null");
    assert(toY != null, "Error ==> toY is null");
    assert(fromScale != null, "Error ==> fromScale is null");
    assert(toScale != null, "Error ==> toScale is null");
    assert(fromDegrees != null, "Error ==> fromDegrees is null");
    assert(toDegrees != null, "Error ==> toDegrees is null");
    assert(
        fromOpacity! < 1,
        "fromOpacity must lower than 1 and higher than 0\n"
        "Error ==> opacity : 0.0 < fromOpacity > 1.0\n"
        "Fix ==> opacity : 0.0 > fromOpacity < 1.0");
    assert(
        toOpacity! > 0,
        "toOpacity must lower than 1.0 and higher than 0.0\n"
        "Error opacity : 0.0 < toOpacity > 1.0");
  }

  /// in next update
  //
  // static Widget custom({
  //   required Widget child,
  //   required double? fromScale,
  //   required double? toScale,
  //   Duration duration = _duration,
  //   Duration delay = _delay,
  //   bool? repeat = false,
  //   int? fromDegrees,
  //   int? toDegrees,
  //   double? fromX,
  //   double? fromY,
  //   double? toX,
  //   double? toY,
  //   double? fromOpacity,
  //   double? toOpacity,
  // }) {
  //   return Text("");
  // }

  @override
  Widget build(BuildContext context) {
    final _tween = TimelineTween<_PhloxAnimeType>()
      ..addScene(begin: const Duration(milliseconds: 0), end: duration)
          .animate(_PhloxAnimeType.moveX, tween: Tween(begin: fromX, end: toX))
      ..addScene(begin: const Duration(milliseconds: 0), end: duration)
          .animate(_PhloxAnimeType.moveY, tween: Tween(begin: fromY, end: toY))
      ..addScene(begin: const Duration(milliseconds: 0), end: duration).animate(
          _PhloxAnimeType.rotate,
          tween: Tween(begin: fromDegrees, end: toDegrees))
      ..addScene(begin: const Duration(milliseconds: 0), end: duration).animate(
          _PhloxAnimeType.scale,
          tween: Tween(begin: fromScale, end: toScale))
      ..addScene(begin: const Duration(milliseconds: 0), end: duration).animate(
          _PhloxAnimeType.fade,
          tween: Tween(begin: fromOpacity, end: toOpacity));

    return PlayAnimation<TimelineValue<_PhloxAnimeType>>(
        tween: _tween,
        duration: _tween.duration,
        child: child,
        delay: delay ?? const Duration(seconds: 0),
        builder: (context, child, animation) {
          return Opacity(
            opacity: animation.get(_PhloxAnimeType.fade),
            child: RotationTransition(
              turns: AlwaysStoppedAnimation(
                  animation.get(_PhloxAnimeType.rotate) / 360),
              child: Transform.scale(
                scale: animation.get(_PhloxAnimeType.scale),
                child: Transform.translate(
                  offset: Offset(animation.get(_PhloxAnimeType.moveX),
                      animation.get(_PhloxAnimeType.moveY)),
                  child: child,
                ),
              ),
            ),
          );
        });
  }
}
