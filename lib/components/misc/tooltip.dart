import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Tooltip component with design system styling
class SharpsellTooltip extends StatelessWidget {
  final String message;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final Color? textColor;
  final double? fontSize;
  final Duration waitDuration;
  final Duration showDuration;

  const SharpsellTooltip({
    super.key,
    required this.message,
    required this.child,
    this.padding,
    this.backgroundColor,
    this.textColor,
    this.fontSize,
    this.waitDuration = const Duration(milliseconds: 500),
    this.showDuration = const Duration(seconds: 2),
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      padding: padding ?? const EdgeInsets.all(SharpsellTheme.paddingSM),
      decoration: BoxDecoration(
        color: backgroundColor ?? SharpsellTheme.black,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
      ),
      textStyle: SharpsellTheme.paragraph3.copyWith(
        color: textColor ?? SharpsellTheme.white,
        fontSize: fontSize,
      ),
      waitDuration: waitDuration,
      showDuration: showDuration,
      child: child,
    );
  }
}
