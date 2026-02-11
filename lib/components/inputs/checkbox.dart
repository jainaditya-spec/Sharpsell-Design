import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Checkbox component with design system styling
class SharpsellCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final String? label;
  final bool enabled;
  final bool tristate;

  const SharpsellCheckbox({
    super.key,
    required this.value,
    this.onChanged,
    this.label,
    this.enabled = true,
    this.tristate = false,
  });

  @override
  Widget build(BuildContext context) {
    final checkbox = Checkbox(
      value: value,
      onChanged: enabled ? onChanged : null,
      tristate: tristate,
      activeColor: SharpsellTheme.primaryColor,
      checkColor: SharpsellTheme.white,
      fillColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return SharpsellTheme.lightGrey2;
          }
          if (states.contains(MaterialState.selected)) {
            return SharpsellTheme.primaryColor;
          }
          return null;
        },
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusXS),
      ),
    );

    if (label != null) {
      return InkWell(
        onTap: enabled ? () => onChanged?.call(!value) : null,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SharpsellTheme.inlineDefault,
            vertical: SharpsellTheme.inlineTight,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              checkbox,
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

    return checkbox;
  }
}
