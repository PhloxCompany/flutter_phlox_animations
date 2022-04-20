part of phlox_animations;

/// [PhloxAnimationsValue] return animations value as function
class PhloxAnimationsValue {
  /// [_moveX] is [PhloxAnimationsBuilder]s Move x value and private double type
  final double? _moveX;

  /// [_color] is [PhloxAnimationsBuilder]s Color value and private double type
  final Color? _color;

  /// [_moveY] is [PhloxAnimationsBuilder]s Move Y value and private double type
  final double? _moveY;

  /// [_scale] is [PhloxAnimationsBuilder]s Scale value and private double type
  final double? _scale;

  /// [_rotate] is [PhloxAnimationsBuilder]s _rotate value and
  /// private double type
  final double? _rotate;

  /// [_opacity] is [PhloxAnimationsBuilder]s _opacity value and
  /// private double type
  final double? _opacity;

  /// [_radius] is [PhloxAnimationsBuilder]s rounded radius value and
  /// private double type
  final double? _radius;

  /// [_progress] is [PhloxAnimationsBuilder]s progress value and
  /// private double type
  final double? _progress;

  PhloxAnimationsValue(this._color, this._moveX, this._moveY, this._scale,
      this._rotate, this._opacity, this._radius, this._progress);

  double? get moveX => _moveX;

  Color? get color => _color;

  double? get moveY => _moveY;

  double? get scale => _scale;

  double? get rotate => _rotate;

  double? get opacity => _opacity;

  double? get radius => _radius;

  double? get progress => _progress;
}
