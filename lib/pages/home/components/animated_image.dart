import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class AnimatedImage extends StatefulWidget {
  final String imageUrl;
  final double initialScale;
  final int duration;

  const AnimatedImage({
    Key key,
    this.imageUrl,
    this.initialScale = 0.8,
    this.duration = 3,
  }) : super(key: key);

  @override
  State<AnimatedImage> createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage> with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: widget.duration));
    _scaleAnimation = Tween<double>(begin: widget.initialScale, end: widget.initialScale * 1.2)
        .animate(_animationController)
      ..addListener(() => setState(() {}));
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Image.asset(
          widget.imageUrl,
          width: 350,
          height: 350,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
