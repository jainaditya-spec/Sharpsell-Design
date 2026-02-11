import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Alert component with design system styling
class SharpsellAlert extends StatelessWidget {
  final String title;
  final String? message;
  final AlertVariant variant;
  final List<Widget>? actions;
  final VoidCallback? onDismiss;
  final IconData? icon;

  const SharpsellAlert({
    super.key,
    required this.title,
    this.message,
    this.variant = AlertVariant.info,
    this.actions,
    this.onDismiss,
    this.icon,
  });

  Color get _backgroundColor {
    switch (variant) {
      case AlertVariant.success:
        return SharpsellTheme.successLight;
      case AlertVariant.warning:
        return SharpsellTheme.warningLight;
      case AlertVariant.error:
        return SharpsellTheme.errorLight;
      case AlertVariant.info:
        return SharpsellTheme.primaryAlpha10;
    }
  }

  Color get _borderColor {
    switch (variant) {
      case AlertVariant.success:
        return SharpsellTheme.successColor;
      case AlertVariant.warning:
        return SharpsellTheme.warningColor;
      case AlertVariant.error:
        return SharpsellTheme.errorColor;
      case AlertVariant.info:
        return SharpsellTheme.primaryColor;
    }
  }

  Color get _textColor {
    switch (variant) {
      case AlertVariant.success:
        return SharpsellTheme.successDark;
      case AlertVariant.warning:
        return SharpsellTheme.warningDark;
      case AlertVariant.error:
        return SharpsellTheme.errorDark;
      case AlertVariant.info:
        return SharpsellTheme.primaryDark;
    }
  }

  IconData get _defaultIcon {
    switch (variant) {
      case AlertVariant.success:
        return Icons.check_circle;
      case AlertVariant.warning:
        return Icons.warning;
      case AlertVariant.error:
        return Icons.error;
      case AlertVariant.info:
        return Icons.info;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.paddingMD),
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
        border: Border.all(
          color: _borderColor,
          width: SharpsellTheme.borderWidthDefault,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon ?? _defaultIcon,
            color: _borderColor,
            size: 24,
          ),
          const SizedBox(width: SharpsellTheme.inlineDefault),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: SharpsellTheme.paragraph2.copyWith(
                    color: _textColor,
                  ),
                ),
                if (message != null) ...[
                  const SizedBox(height: SharpsellTheme.inlineTight),
                  Text(
                    message!,
                    style: SharpsellTheme.paragraph3.copyWith(
                      color: _textColor,
                    ),
                  ),
                ],
                if (actions != null && actions!.isNotEmpty) ...[
                  const SizedBox(height: SharpsellTheme.stackDefault),
                  Wrap(
                    spacing: SharpsellTheme.inlineDefault,
                    runSpacing: SharpsellTheme.inlineTight,
                    children: actions!,
                  ),
                ],
              ],
            ),
          ),
          if (onDismiss != null)
            IconButton(
              icon: const Icon(Icons.close, size: 20),
              color: _textColor,
              onPressed: onDismiss,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
        ],
      ),
    );
  }
}

enum AlertVariant {
  success,
  warning,
  error,
  info,
}
