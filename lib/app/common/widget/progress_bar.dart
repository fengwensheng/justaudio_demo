import 'package:flutter/widgets.dart';

class ProgressBar extends LeafRenderObjectWidget {
  final Color barColor;
  final Color thumbColor;
  final double thumbSize;

  ProgressBar({
    required this.barColor,
    required this.thumbColor,
    this.thumbSize: 20.0,
  });

  @override
  RenderObject createRenderObject(_) => RenderProgressBar(
        barColor: barColor,
        thumbColor: thumbColor,
        thumbSize: thumbSize,
      );

  @override
  void updateRenderObject(
    BuildContext context,
    RenderProgressBar renderObject,
  ) {
    renderObject
      ..barColor = barColor
      ..thumbColor = thumbColor
      ..thumbSize = thumbSize;
  }
}
