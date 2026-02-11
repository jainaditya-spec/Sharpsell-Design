import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Switch component with design system styling
class SharpsellSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final String? label;
  final bool enabled;

  const SharpsellSwitch({
    super.key,
    required this.value,
    this.onChanged,
    this.label,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final switchWidget = Switch(
      value: value,
      onChanged: enabled ? onChanged : null,
      activeColor: SharpsellTheme.primaryColor,
      activeTrackColor: SharpsellTheme.primaryAlpha30,
      inactiveThumbColor: SharpsellTheme.white,
      inactiveTrackColor: SharpsellTheme.lightGrey2,
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  label!,
                  style: SharpsellTheme.paragraph1.copyWith(
                    color: enabled ? SharpsellTheme.textPrimary : SharpsellTheme.textDisabled,
                  ),
                ),
              ),
              switchWidget,
            ],
          ),
        ),
      );
    }

    return switchWidget;
  }
}
