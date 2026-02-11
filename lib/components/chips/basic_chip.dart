import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Basic chip component
class BasicChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback? onTap;
  final VoidCallback? onDeleted;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? selectedColor;

  const BasicChip({
    super.key,
    required this.label,
    this.selected = false,
    this.onTap,
    this.onDeleted,
    this.icon,
    this.backgroundColor,
    this.selectedColor,
  });

  @override
  Widget build(BuildContext context) {
    final bgColor = selected
        ? (selectedColor ?? SharpsellTheme.primaryColor)
        : (backgroundColor ?? SharpsellTheme.textDisabled.withOpacity(0.2));
    
    final textColor = selected ? Colors.white : SharpsellTheme.textPrimary;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(SharpsellTheme.radiusXL),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: SharpsellTheme.spacingM,
          vertical: SharpsellTheme.spacingS,
        ),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(SharpsellTheme.radiusXL),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, size: 16, color: textColor),
              const SizedBox(width: SharpsellTheme.spacingXS),
            ],
            Text(
              label,
              style: TextStyle(
                color: textColor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            if (onDeleted != null) ...[
              const SizedBox(width: SharpsellTheme.spacingXS),
              GestureDetector(
                onTap: onDeleted,
                child: Icon(
                  Icons.close,
                  size: 16,
                  color: textColor,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
