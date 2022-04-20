part of phlox_animations;

class PhloxAnimations extends StatefulWidget {
  /// [duration] is time from start to end of animation
  /// [wait] is time to delay start animation
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
  /// [fromDegrees] for rotate widget from widgets current angle
  /// [toDegrees] for rotate widget to widgets current angle
  /// [progress] is listener progress animation
  /// [moveXCurve], [moveYCurve], [scaleCurve], [opacityCurve], [rotateCurve],
  /// [colorChangeCurve] animations curve

  final Widget? child;
  final bool? loop;
  final bool? auto;
  final Duration duration;
  final Duration? reverseDuration;
  final Duration? wait;
  final PhloxAnimationsController? controller;
  final double? fromX;
  final double? fromY;
  final double? toX;
  final double? toY;
  final double? fromOpacity;
  final double? toOpacity;
  final double? fromScale;
  final double? toScale;
  final double? fromDegrees;
  final double? toDegrees;
  final Offset? rotateOffset;
  final Curve? moveXCurve;
  final Curve? moveYCurve;
  final Curve? scaleCurve;
  final Curve? opacityCurve;
  final Curve? rotateCurve;
  final Curve? colorChangeCurve;
  final _PhloxAnimationsProgress? progress;
  final VoidCallback? onTap;

  const PhloxAnimations({
    Key? key,
    required this.duration,
    required this.child,
    this.controller,
    this.reverseDuration,
    this.loop,
    this.auto,
    this.wait,
    this.fromX,
    this.fromY,
    this.toX,
    this.toY,
    this.fromOpacity,
    this.toOpacity,
    this.fromScale,
    this.toScale,
    this.fromDegrees,
    this.toDegrees,
    this.rotateOffset,
    this.moveXCurve,
    this.moveYCurve,
    this.scaleCurve,
    this.opacityCurve,
    this.rotateCurve,
    this.colorChangeCurve,
    this.progress,
    this.onTap,
  }) : super(key: key);

  const PhloxAnimations.opacity({
    Key? key,
    required this.duration,
    required this.child,
    this.controller,
    this.reverseDuration,
    this.loop,
    this.auto,
    this.wait,
    this.fromX,
    this.fromY,
    this.toX,
    this.toY,
    required this.fromOpacity,
    required this.toOpacity,
    this.fromScale,
    this.toScale,
    this.fromDegrees,
    this.toDegrees,
    this.rotateOffset,
    this.moveXCurve,
    this.moveYCurve,
    this.scaleCurve,
    this.opacityCurve,
    this.rotateCurve,
    this.colorChangeCurve,
    this.progress,
    this.onTap,
  }) : super(key: key);

  const PhloxAnimations.move({
    Key? key,
    required this.duration,
    required this.child,
    this.controller,
    this.reverseDuration,
    this.loop,
    this.auto,
    this.wait,
    required this.fromX,
    required this.fromY,
    required this.toX,
    required this.toY,
    this.fromOpacity,
    this.toOpacity,
    this.fromScale,
    this.toScale,
    this.fromDegrees,
    this.toDegrees,
    this.rotateOffset,
    this.moveXCurve,
    this.moveYCurve,
    this.scaleCurve,
    this.opacityCurve,
    this.rotateCurve,
    this.colorChangeCurve,
    this.progress,
    this.onTap,
  }) : super(key: key);

  const PhloxAnimations.rotate({
    Key? key,
    required this.duration,
    required this.child,
    this.controller,
    this.reverseDuration,
    this.loop,
    this.auto,
    this.wait,
    this.fromX,
    this.fromY,
    this.toX,
    this.toY,
    this.fromOpacity,
    this.toOpacity,
    this.fromScale,
    this.toScale,
    required this.fromDegrees,
    required this.toDegrees,
    this.rotateOffset,
    this.moveXCurve,
    this.moveYCurve,
    this.scaleCurve,
    this.opacityCurve,
    this.rotateCurve,
    this.colorChangeCurve,
    this.progress,
    this.onTap,
  }) : super(key: key);

  static PhloxCustomAnimations custom({
    Key? key,
    required Duration duration,
    required PhloxAnimationsWidgetBuilder builder,
    bool? loop,
    bool? auto,
    Duration? reverseDuration,
    Duration? wait,
    PhloxAnimationsController? controller,
    double? fromX,
    double? fromY,
    double? toX,
    double? toY,
    double? fromOpacity,
    double? toOpacity,
    double? fromScale,
    double? toScale,
    double? fromDegrees,
    double? toDegrees,
    Curve? moveXCurve,
    Curve? moveYCurve,
    Curve? scaleCurve,
    Curve? opacityCurve,
    Curve? rotateCurve,
    Curve? colorChangeCurve,
    _PhloxAnimationsProgress? progress,
    Color? fromColor,
    Color? toColor,
    double? fromRadius,
    double? toRadius,
    Curve? radiusCurve,
  }) =>
      PhloxCustomAnimations(
        key: key,
        duration: duration,
        builder: builder,
        loop: loop,
        auto: auto,
        reverseDuration: reverseDuration,
        wait: wait,
        controller: controller,
        fromX: fromX,
        fromY: fromY,
        toX: toX,
        toY: toY,
        fromOpacity: fromOpacity,
        toOpacity: toOpacity,
        fromScale: fromScale,
        toScale: toScale,
        fromDegrees: fromDegrees,
        toDegrees: toDegrees,
        moveXCurve: moveXCurve,
        moveYCurve: moveYCurve,
        scaleCurve: scaleCurve,
        opacityCurve: opacityCurve,
        rotateCurve: rotateCurve,
        colorChangeCurve: colorChangeCurve,
        progress: progress,
        fromColor: fromColor,
        toColor: toColor,
        fromRadius: fromRadius,
        toRadius: toRadius,
        radiusCurve: radiusCurve,
      );

  static PhloxAnimationsBuilder builder({
    Key? key,
    required Duration duration,
    required PhloxAnimationsWidgetBuilder builder,
    bool? loop,
    bool? auto,
    Duration? reverseDuration,
    Duration? wait,
    PhloxAnimationsController? controller,
    double? fromX,
    double? fromY,
    double? toX,
    double? toY,
    double? fromOpacity,
    double? toOpacity,
    double? fromScale,
    double? toScale,
    double? fromDegrees,
    double? toDegrees,
    Offset? rotateOffset,
    Curve? moveXCurve,
    Curve? moveYCurve,
    Curve? scaleCurve,
    Curve? opacityCurve,
    Curve? rotateCurve,
    Curve? colorChangeCurve,
    _PhloxAnimationsProgress? progress,
    Color? fromColor,
    Color? toColor,
    double? fromRadius,
    double? toRadius,
    Curve? radiusCurve,
  }) =>
      PhloxAnimationsBuilder(
        key: key,
        duration: duration,
        builder: builder,
        loop: loop,
        auto: auto,
        reverseDuration: reverseDuration,
        wait: wait,
        controller: controller,
        fromX: fromX,
        fromY: fromY,
        toX: toX,
        toY: toY,
        fromOpacity: fromOpacity,
        toOpacity: toOpacity,
        fromScale: fromScale,
        toScale: toScale,
        fromDegrees: fromDegrees,
        toDegrees: toDegrees,
        rotateOffset: rotateOffset,
        moveXCurve: moveXCurve,
        moveYCurve: moveYCurve,
        scaleCurve: scaleCurve,
        opacityCurve: opacityCurve,
        rotateCurve: rotateCurve,
        colorChangeCurve: colorChangeCurve,
        progress: progress,
        fromColor: fromColor,
        toColor: toColor,
        fromRadius: fromRadius,
        toRadius: toRadius,
        radiusCurve: radiusCurve,
      );

  @override
  State<PhloxAnimations> createState() => _PhloxAnimationsState();
}

class _PhloxAnimationsState extends State<PhloxAnimations>
    with SingleTickerProviderStateMixin {
  PhloxAnimationsController? _phloxAnimationsController;

  void _initAnimations() {
    _phloxAnimationsController =
        widget.controller ?? PhloxAnimationsController();

    _phloxAnimationsController!.loop = widget.loop ?? false;
    _phloxAnimationsController!.auto = widget.auto ?? true;

    _phloxAnimationsController!._animationController = AnimationController(
      duration: widget.duration,
      vsync: this,
      reverseDuration: widget.reverseDuration ?? widget.duration,
    );

    _phloxAnimationsController!.moveX =
        Tween<double>(begin: widget.fromX ?? 0, end: widget.toX ?? 0)
            .animate(widget.moveXCurve == null
                ? _phloxAnimationsController!._animationController!
                : CurvedAnimation(
                    parent: _phloxAnimationsController!._animationController!,
                    curve: widget.moveXCurve!,
                  ));
    _phloxAnimationsController!.moveY =
        Tween<double>(begin: widget.fromY ?? 0, end: widget.toY ?? 0)
            .animate(widget.moveXCurve == null
                ? _phloxAnimationsController!._animationController!
                : CurvedAnimation(
                    parent: _phloxAnimationsController!._animationController!,
                    curve: widget.moveXCurve!,
                  ));

    _phloxAnimationsController!.scale =
        Tween<double>(begin: widget.fromScale ?? 1, end: widget.toScale ?? 1)
            .animate(widget.scaleCurve == null
                ? _phloxAnimationsController!._animationController!
                : CurvedAnimation(
                    parent: _phloxAnimationsController!._animationController!,
                    curve: widget.scaleCurve!,
                  ));
    _phloxAnimationsController!.rotate = Tween<double>(
            begin: widget.fromDegrees ?? 0, end: widget.toDegrees ?? 0)
        .animate(widget.rotateCurve == null
            ? _phloxAnimationsController!._animationController!
            : CurvedAnimation(
                parent: _phloxAnimationsController!._animationController!,
                curve: widget.rotateCurve!,
              ));
    _phloxAnimationsController!.opacity = Tween<double>(
            begin: widget.fromOpacity ?? 1, end: widget.toOpacity ?? 1)
        .animate(widget.opacityCurve == null
            ? _phloxAnimationsController!._animationController!
            : CurvedAnimation(
                parent: _phloxAnimationsController!._animationController!,
                curve: widget.opacityCurve!,
              ));

    _phloxAnimationsController!.progress = Tween<double>(begin: 0.0, end: 1.0)
        .animate(_phloxAnimationsController!._animationController!)
      ..addListener(() {
        _phloxAnimationsController!.progressListener?.call(double.parse(
            (_phloxAnimationsController!.progress?.value ?? 0)
                .toStringAsFixed(2)));

        widget.progress?.call(double.parse(
            (_phloxAnimationsController!.progress?.value ?? 0)
                .toStringAsFixed(2)));
      })
      ..addStatusListener((status) {
        _phloxAnimationsController!._animationStatus = status;
        _phloxAnimationsController!.statusListener?.call(status);
        if (_phloxAnimationsController!.loop) {
          if (status == AnimationStatus.completed) {
            _phloxAnimationsController!.reverse();
          } else if (status == AnimationStatus.dismissed) {
            _phloxAnimationsController!.forward();
          }
        }
      });

    if (_phloxAnimationsController!.auto) {
      widget.wait == null
          ? _phloxAnimationsController!.forward()
          : Future.delayed(widget.wait!, () {
              _phloxAnimationsController!.forward();
            });
    }
  }

  @override
  void initState() {
    super.initState();
    _initAnimations();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _phloxAnimationsController!.progress!,
      builder: (context, child) {
        return Opacity(
          opacity: _phloxAnimationsController!.opacity!.value,
          child: Transform.rotate(
            angle: _phloxAnimationsController!.degreeToRadian(_phloxAnimationsController!.rotate!.value!),
            origin: widget.rotateOffset ?? Offset(
              _phloxAnimationsController!.moveX!.value,
              _phloxAnimationsController!.moveY!.value,
            ),
            child: Transform.scale(
              scale: _phloxAnimationsController!.scale!.value,
              child: Transform.translate(
                  offset: Offset(
                    _phloxAnimationsController!.moveX!.value,
                    _phloxAnimationsController!.moveY!.value,
                  ),
                  child: child),
            ),
          ),
        );
      },
      child: widget.child,
    );
  }
}
