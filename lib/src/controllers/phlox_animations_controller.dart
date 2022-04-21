part of phlox_animations;

/// You can control phlox animations with [PhloxAnimationsController] .
class PhloxAnimationsController {
  /// the [PhloxAnimationsController] constructor function
  PhloxAnimationsController();

  /// [_PhloxAnimationsProgress] is animations progress from 0 to 1
  /// and return `double` amount
  _PhloxAnimationsProgress? progressListener;

  /// [AnimationStatusListener] is animation status listener
  /// and get a Function that returns animation status
  AnimationStatusListener? statusListener;

  /// [animationStatus] get animation status
  AnimationStatus? get animationStatus =>
      _animationStatus ?? AnimationStatus.dismissed;
  AnimationStatus? _animationStatus;

  /// [loop] is animations loop
  /// [auto] is animations auto start
  bool loop = false;
  bool auto = true;

  /// [moveX] is an animation and can move animations in the horizontal direction
  /// [moveY] is an animation and can move animations in the vertical direction
  /// [color] is an animation and can change the color of the widget between
  /// two colors
  /// [scale] is an animation and can scale your widget size
  /// [rotate] is an animation and can rotate your widget in a clockwise direction
  /// [opacity] is an animation and can control opacity of widget
  /// [radius] is an animation and can change the rounded corner of your widget
  /// [progress] value is from 0 to 1
  Animation<double>? moveX;
  Animation<Color?>? color;
  Animation<double>? moveY;
  Animation<double>? scale;
  Animation<double>? rotate;
  Animation<double>? opacity;
  Animation<double>? radius;
  Animation<double>? progress;

  /// [_animationController] is our all animations controller
  AnimationController? _animationController;

  /// [forward] for start or continue animation
  void forward({double? from}) => _animationController!.forward(from: from);

  /// [reverse] for start from end
  void reverse({double? from}) => _animationController!.reverse(from: from);

  /// [animateTo] for start new animation from last animations value
  /// [loop] for repeat animation
  /// [toX] and [toY] for move
  /// [toOpacity] for opacity
  /// [toScale] for scale
  /// [toDegrees] for rotate in a clockwise direction
  /// and these animations curves is [moveXCurve], [moveYCurve], [scaleCurve],
  /// [opacityCurve], [rotateCurve] and [colorChangeCurve]
  /// enjoy it
  void animateTo({
    bool? loop,
    double? toX,
    double? toY,
    double? toOpacity,
    double? toRoundedRadius,
    Color? toColor,
    double? toScale,
    double? toDegrees,
    Curve? moveXCurve,
    Curve? moveYCurve,
    Curve? scaleCurve,
    Curve? opacityCurve,
    Curve? rotateCurve,
    Curve? colorChangeCurve,
  }) {
    this.loop = loop ?? false;
    moveX = Tween<double>(begin: moveX!.value, end: toX ?? moveX!.value)
        .animate(moveXCurve == null
            ? _animationController!
            : CurvedAnimation(
                parent: _animationController!,
                curve: moveXCurve,
              ));
    moveY = Tween<double>(begin: moveY!.value, end: toY ?? moveY!.value)
        .animate(moveXCurve == null
            ? _animationController!
            : CurvedAnimation(
                parent: _animationController!,
                curve: moveXCurve,
              ));
    scale = Tween<double>(begin: scale!.value, end: toScale ?? scale!.value)
        .animate(scaleCurve == null
            ? _animationController!
            : CurvedAnimation(
                parent: _animationController!,
                curve: scaleCurve,
              ));
    rotate =
        Tween<double>(begin: rotate?.value, end: toDegrees ?? rotate?.value)
            .animate(rotateCurve == null
                ? _animationController!
                : CurvedAnimation(
                    parent: _animationController!,
                    curve: rotateCurve,
                  ));
    color = ColorTween(
            begin: color?.value ?? Colors.transparent,
            end: toColor ?? color?.value)
        .animate(colorChangeCurve == null
            ? _animationController!
            : CurvedAnimation(
                parent: _animationController!,
                curve: colorChangeCurve,
              ));
    opacity =
        Tween<double>(begin: opacity!.value, end: toOpacity ?? opacity!.value)
            .animate(opacityCurve == null
                ? _animationController!
                : CurvedAnimation(
                    parent: _animationController!,
                    curve: opacityCurve,
                  ));
    radius = Tween<double>(
            begin: radius?.value ?? 2,
            end: toRoundedRadius ?? radius?.value ?? 2)
        .animate(_animationController!);
    progress =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController!);
    _animationController!.value = 0;
  }

  /// [newAnimate] for start new animation from last animations value
  /// [loop] for repeat animation
  /// [fromX], [toX], [fromY] and [toY] for move
  /// [toOpacity], [fromOpacity] for opacity
  /// [toScale], [fromScale] for scale
  /// [fromColor], [toColor] for color
  /// [fromRoundedRadius], [toRoundedRadius] for radius
  /// [toDegrees], [fromDegrees] for rotate in a clockwise direction
  /// and these animations curves is [moveXCurve], [moveYCurve], [scaleCurve],
  /// [opacityCurve], [rotateCurve] and [colorChangeCurve]
  /// enjoy it
  void newAnimate({
    bool? loop,
    double? fromX,
    double? toX,
    double? fromY,
    double? toY,
    double? fromOpacity,
    double? toOpacity,
    double? fromRoundedRadius,
    double? toRoundedRadius,
    double? fromScale,
    double? toScale,
    double? fromDegrees,
    double? toDegrees,
    Color? fromColor,
    Color? toColor,
    Curve? moveXCurve,
    Curve? moveYCurve,
    Curve? scaleCurve,
    Curve? opacityCurve,
    Curve? rotateCurve,
    Curve? colorChangeCurve,
  }) {
    this.loop = loop ?? false;

    // init [moveX]
    moveX = Tween<double>(begin: fromX ?? moveX?.value ?? 0, end: toX ?? 0)
        .animate(moveXCurve == null
            ? _animationController!
            : CurvedAnimation(
                parent: _animationController!,
                curve: moveXCurve,
              ));
    // init [moveY]
    moveY = Tween<double>(begin: fromY ?? moveY?.value ?? 0, end: toY ?? 0)
        .animate(moveXCurve == null
            ? _animationController!
            : CurvedAnimation(
                parent: _animationController!,
                curve: moveXCurve,
              ));
    // init [scale]
    scale =
        Tween<double>(begin: fromScale ?? scale?.value ?? 1, end: toScale ?? 1)
            .animate(scaleCurve == null
                ? _animationController!
                : CurvedAnimation(
                    parent: _animationController!,
                    curve: scaleCurve,
                  ));
    // init [rotate]
    rotate = Tween<double>(
            begin: fromDegrees ?? rotate?.value ?? 0, end: toDegrees ?? 0)
        .animate(rotateCurve == null
            ? _animationController!
            : CurvedAnimation(
                parent: _animationController!,
                curve: rotateCurve,
              ));
    // init [color]
    color = ColorTween(
            begin: fromColor ?? color?.value ?? Colors.transparent,
            end: toColor ?? color?.value ?? Colors.transparent)
        .animate(colorChangeCurve == null
            ? _animationController!
            : CurvedAnimation(
                parent: _animationController!,
                curve: colorChangeCurve,
              ));
    // init [opacity]
    opacity = Tween<double>(
            begin: fromOpacity ?? opacity?.value ?? 1, end: toOpacity ?? 1)
        .animate(opacityCurve == null
            ? _animationController!
            : CurvedAnimation(
                parent: _animationController!,
                curve: opacityCurve,
              ));
    // init [radius]
    radius = Tween<double>(
            begin: fromRoundedRadius ?? radius?.value ?? 0,
            end: toRoundedRadius ?? radius?.value ?? 0)
        .animate(_animationController!);
    // init [progress]
    progress =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController!);
    // the animation value must be 0
    _animationController!.value = 0;
  }

  /// [stop] for stop animations
  void stop({bool canceled = true}) =>
      _animationController?.stop(canceled: canceled);

  /// [dispose] for remove animations
  void dispose() => _animationController?.dispose();

  /// [animationValueTo] for animate the animations to custom value
  void animationValueTo(double value,
          {Duration? duration, Curve curve = Curves.linear}) =>
      _animationController?.animateTo(value, curve: curve, duration: duration);

  /// [duration] set new duration
  set duration(Duration duration) => _animationController!.duration = duration;

  /// [duration] set new reverse duration
  set reverseDuration(Duration duration) =>
      _animationController!.reverseDuration = duration;

  /// change radian to degree with [degreeToRadian]
  double degreeToRadian(double degree) {
    return degree * 3.141592653589793238 / 180;
  }
}
