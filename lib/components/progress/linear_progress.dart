import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Linear progress indicator with design system styling
class SharpsellLinearProgress extends StatelessWidget {
  final double? value;
  final Color? backgroundColor;
  final Color? valueColor;
  final double height;
  final ProgressVariant variant;

  const SharpsellLinearProgress({
    super.key,
    this.value,
    this.backgroundColor,
    this.valueColor,
    this.height = 4.0,
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
      height: height,
      child: LinearProgressIndicator(
        value: value,
        backgroundColor: backgroundColor ?? SharpsellTheme.lightGrey,
        valueColor: AlwaysStoppedAnimation<Color>(_valueColor),
        minHeight: height,
      ),
    );
  }
}

enum ProgressVariant {
  primary,
  secondary,
  accent,
  success,
  warning,
  error,
}
