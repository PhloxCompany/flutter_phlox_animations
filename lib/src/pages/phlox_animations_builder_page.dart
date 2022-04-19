part of phlox_animations;

class PhloxAnimationsBuilder extends StatefulWidget {
  /// [duration] is time from start to end of animation
  /// [wait] is time to delay start animation
  /// [builder] is required and you can add your widget into
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
  /// [fromColor] for start animation with selection color
  /// [toColor] for end animation with selection color
  /// [fromRadius] for rounded radios
  /// [toRadius] for rounded radios
  /// [moveXCurve], [moveYCurve], [scaleCurve], [opacityCurve], [rotateCurve],
  /// [colorChangeCurve], [radiusCurve] animations curve

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
  final Curve? moveXCurve;
  final Curve? moveYCurve;
  final Curve? scaleCurve;
  final Curve? opacityCurve;
  final Curve? rotateCurve;
  final Curve? colorChangeCurve;
  final _PhloxAnimationsProgress? progress;
  final PhloxAnimationsWidgetBuilder? builder;
  final Color? fromColor;
  final Color? toColor;
  final double? fromRadius;
  final double? toRadius;
  final Curve? radiusCurve;

  /// constructor --
  const PhloxAnimationsBuilder({
    Key? key,
    required this.duration,
    required this.builder,
    this.controller,
    this.reverseDuration,
    this.wait,
    this.fromX,
    this.loop,
    this.auto,
    this.fromY,
    this.toX,
    this.fromRadius,
    this.toRadius,
    this.fromColor,
    this.radiusCurve,
    this.toColor,
    this.toY,
    this.fromOpacity,
    this.toOpacity,
    this.fromScale,
    this.toScale,
    this.fromDegrees,
    this.toDegrees,
    this.moveXCurve,
    this.moveYCurve,
    this.scaleCurve,
    this.opacityCurve,
    this.rotateCurve,
    this.colorChangeCurve,
    this.progress,
  }) : super(key: key);

  /// constructor --
  const PhloxAnimationsBuilder.rotate({
    Key? key,
    required this.duration,
    required this.builder,
    this.controller,
    this.reverseDuration,
    this.wait,
    this.fromX,
    this.loop,
    this.auto,
    this.fromY,
    this.toX,
    this.fromRadius,
    this.toRadius,
    this.fromColor,
    this.radiusCurve,
    this.toColor,
    this.toY,
    this.fromOpacity,
    this.toOpacity,
    this.fromScale,
    this.toScale,
    required this.fromDegrees,
    required this.toDegrees,
    this.moveXCurve,
    this.moveYCurve,
    this.scaleCurve,
    this.opacityCurve,
    this.rotateCurve,
    this.colorChangeCurve,
    this.progress,
  }) : super(key: key);

  /// constructor -- [PhloxAnimationsBuilder.opacity]
  const PhloxAnimationsBuilder.opacity({
    Key? key,
    required this.duration,
    required this.builder,
    this.controller,
    this.reverseDuration,
    this.wait,
    this.fromX,
    this.loop,
    this.auto,
    this.fromY,
    this.toX,
    this.fromRadius,
    this.toRadius,
    this.fromColor,
    this.radiusCurve,
    this.toColor,
    this.toY,
    required this.fromOpacity,
    required this.toOpacity,
    this.fromScale,
    this.toScale,
    this.fromDegrees,
    this.toDegrees,
    this.moveXCurve,
    this.moveYCurve,
    this.scaleCurve,
    this.opacityCurve,
    this.rotateCurve,
    this.colorChangeCurve,
    this.progress,
  }) : super(key: key);

  /// constructor -- [PhloxAnimationsBuilder.move]
  const PhloxAnimationsBuilder.move({
    Key? key,
    required this.duration,
    required this.builder,
    this.controller,
    this.reverseDuration,
    this.wait,
    required this.fromX,
    this.loop,
    this.auto,
    required this.fromY,
    required this.toX,
    this.fromRadius,
    this.toRadius,
    this.fromColor,
    this.radiusCurve,
    this.toColor,
    required this.toY,
    this.fromOpacity,
    this.toOpacity,
    this.fromScale,
    this.toScale,
    this.fromDegrees,
    this.toDegrees,
    this.moveXCurve,
    this.moveYCurve,
    this.scaleCurve,
    this.opacityCurve,
    this.rotateCurve,
    this.colorChangeCurve,
    this.progress,
  }) : super(key: key);

  @override
  State<PhloxAnimationsBuilder> createState() => _PhloxAnimationsBuilderState();
}

class _PhloxAnimationsBuilderState extends State<PhloxAnimationsBuilder>
    with SingleTickerProviderStateMixin {
  /// [_phloxAnimationsController] is phlox animations animation controller
  PhloxAnimationsController? _phloxAnimationsController;

  /// [_initAnimations] init all animations
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
    _phloxAnimationsController!.color = ColorTween(
            begin: widget.fromColor ?? Colors.transparent,
            end: widget.toColor ?? Colors.transparent)
        .animate(widget.colorChangeCurve == null
            ? _phloxAnimationsController!._animationController!
            : CurvedAnimation(
                parent: _phloxAnimationsController!._animationController!,
                curve: widget.colorChangeCurve!,
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
    _phloxAnimationsController!.radius =
        Tween<double>(begin: widget.fromRadius ?? 0, end: widget.toRadius ?? 4)
            .animate(widget.radiusCurve == null
                ? _phloxAnimationsController!._animationController!
                : CurvedAnimation(
                    parent: _phloxAnimationsController!._animationController!,
                    curve: widget.radiusCurve!,
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

        widget.builder?.call(PhloxAnimationsValue(
            _phloxAnimationsController!.color!.value!,
            _phloxAnimationsController!.moveX!.value,
            _phloxAnimationsController!.moveY!.value,
            _phloxAnimationsController!.scale!.value,
            _phloxAnimationsController!.rotate!.value,
            _phloxAnimationsController!.opacity!.value,
            _phloxAnimationsController!.radius!.value,
            double.parse((_phloxAnimationsController!.progress?.value ?? 0)
                .toStringAsFixed(2))));
      })
      ..addStatusListener((status) {
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
      if (widget.wait == null) {
        _phloxAnimationsController!.forward();
      } else {
        Future.delayed(widget.wait!, () {
          _phloxAnimationsController!.forward();
        });
      }
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
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(
              _phloxAnimationsController!.rotate!.value / 360,
            ),
            child: Transform.scale(
              scale: _phloxAnimationsController!.scale!.value,
              child: Transform.translate(
                offset: Offset(
                  _phloxAnimationsController!.moveX!.value,
                  _phloxAnimationsController!.moveY!.value,
                ),
                child: widget.builder!(
                  PhloxAnimationsValue(
                    _phloxAnimationsController!.color!.value!,
                    _phloxAnimationsController!.moveX!.value,
                    _phloxAnimationsController!.moveY!.value,
                    _phloxAnimationsController!.scale!.value,
                    _phloxAnimationsController!.rotate!.value,
                    _phloxAnimationsController!.opacity!.value,
                    _phloxAnimationsController!.radius!.value,
                    double.parse(
                      (_phloxAnimationsController!.progress?.value ?? 0)
                          .toStringAsFixed(3),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      child: widget.builder!(PhloxAnimationsValue(
        _phloxAnimationsController!.color!.value!,
        _phloxAnimationsController!.moveX!.value,
        _phloxAnimationsController!.moveY!.value,
        _phloxAnimationsController!.scale!.value,
        _phloxAnimationsController!.rotate!.value,
        _phloxAnimationsController!.opacity!.value,
        _phloxAnimationsController!.radius!.value,
        double.parse(
          (_phloxAnimationsController!.progress?.value ?? 0).toStringAsFixed(3),
        ),
      )),
    );
  }
}
