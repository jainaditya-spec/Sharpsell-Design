import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Divider component with design system styling
class SharpsellDivider extends StatelessWidget {
  final double? height;
  final double? thickness;
  final Color? color;
  final double? indent;
  final double? endIndent;

  const SharpsellDivider({
    super.key,
    this.height,
    this.thickness,
    this.color,
    this.indent,
    this.endIndent,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height ?? SharpsellTheme.stackDefault,
      thickness: thickness ?? SharpsellTheme.borderWidthDefault,
      color: color ?? SharpsellTheme.lightGrey2,
      indent: indent,
      endIndent: endIndent,
    );
  }
}
