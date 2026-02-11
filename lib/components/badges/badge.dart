import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Badge component with design system styling
class SharpsellBadge extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final BadgeVariant variant;
  final BadgeSize size;

  const SharpsellBadge({
    super.key,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.variant = BadgeVariant.primary,
    this.size = BadgeSize.medium,
  });

  Color get _backgroundColor {
    if (backgroundColor != null) return backgroundColor!;
    
    switch (variant) {
      case BadgeVariant.primary:
        return SharpsellTheme.primaryColor;
      case BadgeVariant.secondary:
        return SharpsellTheme.secondaryColor;
      case BadgeVariant.accent:
        return SharpsellTheme.accentColor;
      case BadgeVariant.success:
        return SharpsellTheme.successColor;
      case BadgeVariant.warning:
        return SharpsellTheme.warningColor;
      case BadgeVariant.error:
        return SharpsellTheme.errorColor;
      case BadgeVariant.neutral:
        return SharpsellTheme.darkGrey;
    }
  }

  Color get _textColor {
    if (textColor != null) return textColor!;
    return SharpsellTheme.white;
  }

  double get _fontSize {
    switch (size) {
      case BadgeSize.small:
        return SharpsellTheme.paragraph5.fontSize!;
      case BadgeSize.medium:
        return SharpsellTheme.paragraph3.fontSize!;
      case BadgeSize.large:
        return SharpsellTheme.paragraph1.fontSize!;
    }
  }

  EdgeInsets get _padding {
    switch (size) {
      case BadgeSize.small:
        return const EdgeInsets.symmetric(
          horizontal: SharpsellTheme.paddingXS,
          vertical: SharpsellTheme.inlineTight,
        );
      case BadgeSize.medium:
        return const EdgeInsets.symmetric(
          horizontal: SharpsellTheme.paddingSM,
          vertical: SharpsellTheme.inlineDefault,
        );
      case BadgeSize.large:
        return const EdgeInsets.symmetric(
          horizontal: SharpsellTheme.paddingMD,
          vertical: SharpsellTheme.inlineDefault,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _padding,
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusPill),
      ),
      child: Text(
        text,
        style: SharpsellTheme.paragraph3.copyWith(
          color: _textColor,
          fontSize: _fontSize,
          fontWeight: SharpsellTheme.fontWeightBold,
        ),
      ),
    );
  }
}

enum BadgeVariant {
  primary,
  secondary,
  accent,
  success,
  warning,
  error,
  neutral,
}

enum BadgeSize {
  small,
  medium,
  large,
}
