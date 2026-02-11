import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Sharpsell logo component
class SharpsellLogo extends StatelessWidget {
  final LogoSize size;
  final bool showText;
  final Color? color;

  const SharpsellLogo({
    super.key,
    this.size = LogoSize.medium,
    this.showText = true,
    this.color,
  });

  double get _iconSize {
    switch (size) {
      case LogoSize.small:
        return 24.0;
      case LogoSize.medium:
        return 32.0;
      case LogoSize.large:
        return 48.0;
      case LogoSize.xlarge:
        return 64.0;
    }
  }

  double get _fontSize {
    switch (size) {
      case LogoSize.small:
        return SharpsellTheme.heading5.fontSize!;
      case LogoSize.medium:
        return SharpsellTheme.heading3.fontSize!;
      case LogoSize.large:
        return SharpsellTheme.heading2.fontSize!;
      case LogoSize.xlarge:
        return SharpsellTheme.heading1.fontSize!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Logo icon - using a simple geometric shape as placeholder
        Container(
          width: _iconSize,
          height: _iconSize,
          decoration: BoxDecoration(
            color: color ?? SharpsellTheme.primaryColor,
            borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
          ),
          child: Icon(
            Icons.rocket_launch,
            color: SharpsellTheme.white,
            size: _iconSize * 0.6,
          ),
        ),
        if (showText) ...[
          const SizedBox(width: SharpsellTheme.inlineDefault),
          Text(
            'Sharpsell',
            style: SharpsellTheme.heading3.copyWith(
              fontSize: _fontSize,
              color: color ?? SharpsellTheme.textPrimary,
              fontWeight: SharpsellTheme.fontWeightBold,
            ),
          ),
        ],
      ],
    );
  }
}

enum LogoSize {
  small,
  medium,
  large,
  xlarge,
}
