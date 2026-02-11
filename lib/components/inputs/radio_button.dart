import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Radio button component with design system styling
class SharpsellRadio<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final String? label;
  final bool enabled;

  const SharpsellRadio({
    super.key,
    required this.value,
    required this.groupValue,
    this.onChanged,
    this.label,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = value == groupValue;
    
    final radio = Radio<T>(
      value: value,
      groupValue: groupValue,
      onChanged: enabled ? onChanged : null,
      activeColor: SharpsellTheme.primaryColor,
      fillColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return SharpsellTheme.lightGrey2;
          }
          if (states.contains(MaterialState.selected)) {
            return SharpsellTheme.primaryColor;
          }
          return SharpsellTheme.darkGrey;
        },
      ),
    );

    if (label != null) {
      return InkWell(
        onTap: enabled ? () => onChanged?.call(value) : null,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SharpsellTheme.inlineDefault,
            vertical: SharpsellTheme.inlineTight,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              radio,
              const SizedBox(width: SharpsellTheme.inlineDefault),
              Text(
                label!,
                style: SharpsellTheme.paragraph1.copyWith(
                  color: enabled ? SharpsellTheme.textPrimary : SharpsellTheme.textDisabled,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return radio;
  }
}
