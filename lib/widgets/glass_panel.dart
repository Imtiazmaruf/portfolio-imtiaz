import 'dart:ui';
import 'package:flutter/material.dart';
import '../theme.dart';

class GlassPanel extends StatefulWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;

  const GlassPanel({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(32.0),
  });

  @override
  State<GlassPanel> createState() => _GlassPanelState();
}

class _GlassPanelState extends State<GlassPanel> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        transform: Matrix4.translationValues(0.0, _isHovering ? -5.0 : 0.0, 0.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              padding: widget.padding,
              decoration: BoxDecoration(
                color: AppTheme.glassBg,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: _isHovering 
                      ? AppTheme.accentColor.withAlpha(76) // ~30%
                      : AppTheme.glassBorder,
                  width: 1,
                ),
                boxShadow: _isHovering
                    ? [
                        BoxShadow(
                          color: Colors.black.withAlpha(178), // ~70%
                          blurRadius: 30,
                          offset: const Offset(0, 10),
                          spreadRadius: -15,
                        )
                      ]
                    : [],
              ),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
