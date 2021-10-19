library phlox_animations;

import 'package:flutter/cupertino.dart';
import 'package:phlox_animations/phlox_animations_enums.dart';
import 'package:simple_animations/simple_animations.dart';



class PhloxAnimations extends StatelessWidget {
  final Duration? duration;
  final Duration delay;
  final Widget? child;
  final double? fromOpacity;
  final double? toOpacity;
  final bool? repeat;
  final double? fromX;
  final double? fromY;
  final double? toX;
  final double? toY;
  final double? fromScale;
  final double? toScale;
  final double? fromDegrees;
  final double? toDegrees;

  static const Duration _duration = Duration(seconds: 1);
  static const Duration _delay = Duration(seconds: 0);

  PhloxAnimations({
    Key? key,
    required this.child,
    required this.duration,
    this.delay = _delay,
    this.fromOpacity = 1.0,
    this.toOpacity = 1.0,
    this.repeat = false,
    this.fromX = 0.0,
    this.fromY = 0.0,
    this.toX = 0.0,
    this.toY = 0.0,
    this.fromScale = 1.0,
    this.toScale = 1.0,
    this.fromDegrees = 0,
    this.toDegrees = 0,
  }) : super(key: key) {
    assert(duration != null , "Error ==> duration is null");
    assert(fromOpacity != null , "Error ==> fromOpacity is null");
    assert(toOpacity != null , "Error ==> toOpacity is null");
    assert(repeat != null , "Error ==> repeat is null");
    assert(fromX != null , "Error ==> fromX is null");
    assert(toX != null , "Error ==> toX is null");
    assert(fromY != null , "Error ==> fromY is null");
    assert(toY != null , "Error ==> toY is null");
    assert(fromScale != null , "Error ==> fromScale is null");
    assert(toScale != null , "Error ==> toScale is null");
    assert(fromDegrees != null , "Error ==> fromDegrees is null");
    assert(toDegrees != null , "Error ==> toDegrees is null");
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
    this.delay = _delay,
    this.repeat = false,
    this.fromScale = 1.0,
    this.toScale = 1.0,
    this.fromDegrees = 0,
    this.toDegrees = 0,
  }) : super(key: key) {
    assert(duration != null , "Error ==> duration is null");
    assert(fromOpacity != null , "Error ==> fromOpacity is null");
    assert(toOpacity != null , "Error ==> toOpacity is null");
    assert(repeat != null , "Error ==> repeat is null");
    assert(fromX != null , "Error ==> fromX is null");
    assert(toX != null , "Error ==> toX is null");
    assert(fromY != null , "Error ==> fromY is null");
    assert(toY != null , "Error ==> toY is null");
    assert(fromScale != null , "Error ==> fromScale is null");
    assert(toScale != null , "Error ==> toScale is null");
    assert(fromDegrees != null , "Error ==> fromDegrees is null");
    assert(toDegrees != null , "Error ==> toDegrees is null");
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
    this.delay = _delay,
    this.repeat = false,
    this.fromOpacity = 1.0,
    this.toOpacity = 1.0,
    this.fromScale = 1.0,
    this.toScale = 1.0,
    this.fromDegrees = 0,
    this.toDegrees = 0,
  }) : super(key: key) {
    assert(duration != null , "Error ==> duration is null");
    assert(fromOpacity != null , "Error ==> fromOpacity is null");
    assert(toOpacity != null , "Error ==> toOpacity is null");
    assert(repeat != null , "Error ==> repeat is null");
    assert(fromX != null , "Error ==> fromX is null");
    assert(toX != null , "Error ==> toX is null");
    assert(fromY != null , "Error ==> fromY is null");
    assert(toY != null , "Error ==> toY is null");
    assert(fromScale != null , "Error ==> fromScale is null");
    assert(toScale != null , "Error ==> toScale is null");
    assert(fromDegrees != null , "Error ==> fromDegrees is null");
    assert(toDegrees != null , "Error ==> toDegrees is null");
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
    this.delay = _delay,
    this.repeat = false,
    this.fromX = 0.0,
    this.fromY = 0.0,
    this.toX = 0.0,
    this.toY = 0.0,
    this.fromOpacity = 1.0,
    this.toOpacity = 1.0,
    this.fromScale = 1.0,
    this.toScale = 1.0,
  }) : super(key: key) {
    assert(duration != null , "Error ==> duration is null");
    assert(fromOpacity != null , "Error ==> fromOpacity is null");
    assert(toOpacity != null , "Error ==> toOpacity is null");
    assert(repeat != null , "Error ==> repeat is null");
    assert(fromX != null , "Error ==> fromX is null");
    assert(toX != null , "Error ==> toX is null");
    assert(fromY != null , "Error ==> fromY is null");
    assert(toY != null , "Error ==> toY is null");
    assert(fromScale != null , "Error ==> fromScale is null");
    assert(toScale != null , "Error ==> toScale is null");
    assert(fromDegrees != null , "Error ==> fromDegrees is null");
    assert(toDegrees != null , "Error ==> toDegrees is null");
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
    this.delay = _delay,
    this.repeat = false,
    this.fromDegrees = 0,
    this.toDegrees = 0,
    this.fromX = 0.0,
    this.fromY = 0.0,
    this.toX = 0.0,
    this.toY = 0.0,
    this.fromOpacity = 1.0,
    this.toOpacity = 1.0,
  }) : super(key: key) {
    assert(duration != null , "Error ==> duration is null");
    assert(fromOpacity != null , "Error ==> fromOpacity is null");
    assert(toOpacity != null , "Error ==> toOpacity is null");
    assert(repeat != null , "Error ==> repeat is null");
    assert(fromX != null , "Error ==> fromX is null");
    assert(toX != null , "Error ==> toX is null");
    assert(fromY != null , "Error ==> fromY is null");
    assert(toY != null , "Error ==> toY is null");
    assert(fromScale != null , "Error ==> fromScale is null");
    assert(toScale != null , "Error ==> toScale is null");
    assert(fromDegrees != null , "Error ==> fromDegrees is null");
    assert(toDegrees != null , "Error ==> toDegrees is null");
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
    final _tween = TimelineTween<PhloxAnimeType>()
      ..addScene(begin: const Duration(milliseconds: 0), end: duration)
          .animate(PhloxAnimeType.moveX, tween: Tween(begin: fromX, end: toX))
      ..addScene(begin: const Duration(milliseconds: 0), end: duration)
          .animate(PhloxAnimeType.moveY, tween: Tween(begin: fromY, end: toY))
      ..addScene(begin: const Duration(milliseconds: 0), end: duration).animate(
          PhloxAnimeType.rotate,
          tween: Tween(begin: fromDegrees, end: toDegrees))
      ..addScene(begin: const Duration(milliseconds: 0), end: duration).animate(
          PhloxAnimeType.scale,
          tween: Tween(begin: fromScale, end: toScale))
      ..addScene(begin: const Duration(milliseconds: 0), end: duration).animate(
          PhloxAnimeType.fade,
          tween: Tween(begin: fromOpacity, end: toOpacity));

    return repeat == true
        ? LoopAnimation<TimelineValue<PhloxAnimeType>>(
            tween: _tween,
            duration: _tween.duration,
            child: child,
            builder: (context, child, animation) {
              return Opacity(
                opacity: animation.get(PhloxAnimeType.fade),
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(
                      animation.get(PhloxAnimeType.rotate) / 360),
                  child: Transform.scale(
                    scale: animation.get(PhloxAnimeType.scale),
                    child: Transform.translate(
                      offset: Offset(animation.get(PhloxAnimeType.moveX),
                          animation.get(PhloxAnimeType.moveY)),
                      child: child,
                    ),
                  ),
                ),
              );
            })
        : PlayAnimation<TimelineValue<PhloxAnimeType>>(
            tween: _tween,
            duration: _tween.duration,
            child: child,
            delay: delay,

            builder: (context, child, animation) {
              return Opacity(
                opacity: animation.get(PhloxAnimeType.fade),
                child: RotationTransition(
                  turns: AlwaysStoppedAnimation(
                      animation.get(PhloxAnimeType.rotate) / 360),
                  child: Transform.scale(
                    scale: animation.get(PhloxAnimeType.scale),
                    child: Transform.translate(
                      offset: Offset(animation.get(PhloxAnimeType.moveX),
                          animation.get(PhloxAnimeType.moveY)),
                      child: child,
                    ),
                  ),
                ),
              );
            });
  }
}