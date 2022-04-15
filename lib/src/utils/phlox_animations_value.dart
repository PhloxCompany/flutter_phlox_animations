part of phlox_animations;

class PhloxAnimationsValue{

  final double? _moveX;
  final Color? _color;
  final double? _moveY;
  final double? _scale;
  final double? _rotate;
  final double? _opacity;
  final double? _radius;
  final double? _progress;

  PhloxAnimationsValue(this._color, this._moveX, this._moveY, this._scale, this._rotate, this._opacity, this._radius, this._progress);

  double? get moveX => _moveX;

  Color? get color => _color;

  double? get moveY => _moveY;

  double? get scale => _scale;

  double? get rotate => _rotate;

  double? get opacity => _opacity;

  double? get radius => _radius;

  double? get progress => _progress;
}