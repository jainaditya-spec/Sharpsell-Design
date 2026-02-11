import 'package:flutter/material.dart';
import '../../app/theme.dart';
import 'linear_progress.dart';

/// Circular progress indicator with design system styling
class SharpsellCircularProgress extends StatelessWidget {
  final double? value;
  final Color? backgroundColor;
  final Color? valueColor;
  final double strokeWidth;
  final double size;
  final ProgressVariant variant;

  const SharpsellCircularProgress({
    super.key,
    this.value,
    this.backgroundColor,
    this.valueColor,
    this.strokeWidth = 4.0,
    this.size = 40.0,
    this.variant = ProgressVariant.primary,
  });

  Color get _valueColor {
    if (valueColor != null) return valueColor!;
    
    switch (variant) {
      case ProgressVariant.primary:
        return SharpsellTheme.primaryColor;
      case ProgressVariant.secondary:
        return SharpsellTheme.secondaryColor;
      case ProgressVariant.accent:
        return SharpsellTheme.accentColor;
      case ProgressVariant.success:
        return SharpsellTheme.successColor;
      case ProgressVariant.warning:
        return SharpsellTheme.warningColor;
      case ProgressVariant.error:
        return SharpsellTheme.errorColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        value: value,
        backgroundColor: backgroundColor ?? SharpsellTheme.lightGrey,
        valueColor: AlwaysStoppedAnimation<Color>(_valueColor),
        strokeWidth: strokeWidth,
      ),
    );
  }
}
