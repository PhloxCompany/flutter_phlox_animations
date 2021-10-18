library phlox_animations;

import 'package:flutter/cupertino.dart';
import 'package:simple_animations/simple_animations.dart';

class PhloxAnimations extends StatelessWidget {
  final Duration duration;
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
  final int? fromDegrees;
  final int? toDegrees;

  static const Duration _duration = Duration(seconds: 1);
  static const Duration _delay = Duration(seconds: 0);

  const PhloxAnimations({
    Key? key,
    required this.child,
    this.duration = _duration,
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
  }) : super(key: key);

  const PhloxAnimations.opacity({Key? key,
    required this.child,
    required this.fromOpacity,
    this.toOpacity,
    this.fromX = 1.0,
    this.fromY = 1.0,
    this.toX = 1.0,
    this.toY = 1.0,
    this.duration = _duration,
    this.delay = _delay,
    this.repeat = false,
    this.fromScale = 1.0,
    this.toScale = 1.0,
    this.fromDegrees = 0,
    this.toDegrees = 0,
  }) : super(key: key);

  const PhloxAnimations.move({Key? key,
    required this.child,
    required this.fromX,
    required this.fromY,
    required this.toX,
    required this.toY,
    this.duration = _duration,
    this.delay = _delay,
    this.repeat = false,
    this.fromOpacity = 1.0,
    this.toOpacity = 1.0,
    this.fromScale = 1.0,
    this.toScale = 1.0,
    this.fromDegrees = 0,
    this.toDegrees = 0,
  }) : super(key: key);

  const PhloxAnimations.rotate({Key? key,
    required this.child,
    required this.fromDegrees,
    required this.toDegrees,
    this.duration = _duration,
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
  }) : super(key: key);

  const PhloxAnimations.scale({Key? key,
    required this.child,
    required this.fromScale,
    required this.toScale,
    this.duration = _duration,
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
  }) : super(key: key);

  static Widget custom({
    required Widget child,
    required double? fromScale,
    required double? toScale,
    Duration duration = _duration,
    Duration delay = _delay,
    bool? repeat = false,
    int? fromDegrees,
    int? toDegrees,
    double? fromX,
    double? fromY,
    double? toX,
    double? toY,
    double? fromOpacity,
    double? toOpacity,
  }) {
    return _TranslatePlayAnimation();
  }

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

    // return repeat == true
    //     ? LoopAnimation<TimelineValue<PhloxAnimeType>>(
    //         tween: _tween,
    //         duration: _tween.duration,
    //         child: child,
    //         builder: (context, child, animation) {
    //           return Opacity(
    //             opacity: animation.get(PhloxAnimeType.fade),
    //             child: Transform.scale(
    //               scale: animation.get(PhloxAnimeType.scale),
    //               child: Transform.rotate(
    //                 angle: animation.get(PhloxAnimeType.rotate),
    //                 child: Transform.translate(
    //                   offset: Offset(animation.get(PhloxAnimeType.moveX),
    //                       animation.get(PhloxAnimeType.moveY)),
    //                   child: child,
    //                 ),
    //               ),
    //             ),
    //           );
    //         })
    //     :
    return PlayAnimation<TimelineValue<PhloxAnimeType>>(
            tween: _tween,
            duration: _tween.duration,
            child: child,
            delay: delay,
            builder: (context, child, animation) {
              return Opacity(
                opacity: animation.get(PhloxAnimeType.fade),
                child: Transform.scale(
                  scale: animation.get(PhloxAnimeType.scale),
                  child: Transform.rotate(
                    angle: animation.get(PhloxAnimeType.rotate),
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

enum PhloxAnimeType {
  fade,
  moveX,
  moveY,
  rotate,
  scale,
  custom,
}

class _FadePlayAnimation extends StatelessWidget {
  const _FadePlayAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _TranslatePlayAnimation extends StatelessWidget {
  const _TranslatePlayAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _RotatePlayAnimation extends StatelessWidget {
  const _RotatePlayAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
