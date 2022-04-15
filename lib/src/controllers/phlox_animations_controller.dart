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

  
  void forward({double? from}) => _animationController!.forward(from: from);

  void reverse({double? from}) => _animationController!.reverse(from: from);

  void animateTo({
    bool? loop,
    double? toX,
    double? toY,
    double? toOpacity,
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
    moveX = Tween<double>(begin: moveX!.value, end: toX ?? 0)
        .animate(moveXCurve == null
        ? _animationController!
        : CurvedAnimation(
      parent: _animationController!,
      curve: moveXCurve,
    ));
    moveY = Tween<double>(begin: moveY!.value, end: toY ?? 0)
        .animate(moveXCurve == null
        ? _animationController!
        : CurvedAnimation(
      parent: _animationController!,
      curve: moveXCurve,
    ));
    scale = Tween<double>(begin: scale!.value, end: toScale ?? 1)
        .animate(scaleCurve == null
        ? _animationController!
        : CurvedAnimation(
      parent: _animationController!,
      curve: scaleCurve,
    ));
    rotate = Tween<double>(begin: rotate!.value, end: toDegrees ?? 0)
        .animate(rotateCurve == null
        ? _animationController!
        : CurvedAnimation(
      parent: _animationController!,
      curve: rotateCurve,
    ));
    color = ColorTween(
        begin: color!.value ?? Colors.transparent,
        end: toColor ?? color!.value)
        .animate(colorChangeCurve == null
        ? _animationController!
        : CurvedAnimation(
      parent: _animationController!,
      curve: colorChangeCurve,
    ));
    opacity = Tween<double>(begin: opacity!.value, end: toOpacity ?? 1)
        .animate(opacityCurve == null
        ? _animationController!
        : CurvedAnimation(
      parent: _animationController!,
      curve: opacityCurve,
    ));
    radius = Tween<double>(begin: radius?.value ?? 0, end: radius?.value)
        .animate(_animationController!);
    progress =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController!);
    _animationController!.value = 0;
  }

  void newAnimate({
    bool? loop,
    double? fromX,
    double? toX,
    double? fromY,
    double? toY,
    double? fromOpacity,
    double? toOpacity,
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
    moveX = Tween<double>(begin: fromX ?? moveX!.value, end: toX ?? 0)
        .animate(moveXCurve == null
        ? _animationController!
        : CurvedAnimation(
      parent: _animationController!,
      curve: moveXCurve,
    ));
    moveY = Tween<double>(begin: fromY ?? moveY!.value, end: toY ?? 0)
        .animate(moveXCurve == null
        ? _animationController!
        : CurvedAnimation(
      parent: _animationController!,
      curve: moveXCurve,
    ));
    scale = Tween<double>(begin: fromScale ?? scale!.value, end: toScale ?? 1)
        .animate(scaleCurve == null
        ? _animationController!
        : CurvedAnimation(
      parent: _animationController!,
      curve: scaleCurve,
    ));
    rotate = Tween<double>(begin: fromDegrees ?? rotate!.value, end: toDegrees ?? 0)
        .animate(rotateCurve == null
        ? _animationController!
        : CurvedAnimation(
      parent: _animationController!,
      curve: rotateCurve,
    ));
    color = ColorTween(
        begin: fromColor ?? color!.value ?? Colors.transparent,
        end: toColor ?? color!.value ?? Colors.transparent)
        .animate(colorChangeCurve == null
        ? _animationController!
        : CurvedAnimation(
      parent: _animationController!,
      curve: colorChangeCurve,
    ));
    opacity = Tween<double>(begin: fromOpacity ?? opacity!.value, end: toOpacity ?? 1)
        .animate(opacityCurve == null
        ? _animationController!
        : CurvedAnimation(
      parent: _animationController!,
      curve: opacityCurve,
    ));
    radius = Tween<double>(begin: radius?.value ?? 0, end: radius?.value)
        .animate(_animationController!);
    progress =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController!);
    _animationController!.value = 0;
  }

  set duration(Duration duration) => _animationController!.duration = duration;

  set reverseDuration(Duration duration) =>
      _animationController!.reverseDuration = duration;
}