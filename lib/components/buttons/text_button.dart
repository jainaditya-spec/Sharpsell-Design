import 'package:flutter/material.dart';
import '../../app/theme.dart';
import 'primary_button.dart';

/// Text button component
class TextButtonComponent extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonSize size;
  final bool enabled;
  final IconData? icon;
  final bool fullWidth;

  const TextButtonComponent({
    super.key,
    required this.text,
    this.onPressed,
    this.size = ButtonSize.medium,
    this.enabled = true,
    this.icon,
    this.fullWidth = false,
  });

  double get _height {
    switch (size) {
      case ButtonSize.small:
        return 32.0;
      case ButtonSize.medium:
        return 40.0;
      case ButtonSize.large:
        return 48.0;
    }
  }

  double get _fontSize {
    switch (size) {
      case ButtonSize.small:
        return 14.0;
      case ButtonSize.medium:
        return 16.0;
      case ButtonSize.large:
        return 18.0;
    }
  }

  EdgeInsets get _padding {
    switch (size) {
      case ButtonSize.small:
        return const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0);
      case ButtonSize.medium:
        return const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0);
      case ButtonSize.large:
        return const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final button = TextButton(
      onPressed: enabled ? onPressed : null,
      style: TextButton.styleFrom(
        foregroundColor: SharpsellTheme.primaryColor,
        padding: _padding,
        minimumSize: Size(fullWidth ? double.infinity : 0, _height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
        ),
      ),
      child: Row(
        mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon, size: _fontSize),
            const SizedBox(width: 8),
          ],
          Text(
            text,
            style: TextStyle(
              fontSize: _fontSize,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );

    return fullWidth ? SizedBox(width: double.infinity, child: button) : button;
  }
}
