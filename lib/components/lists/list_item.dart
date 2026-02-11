import 'package:flutter/material.dart';
import '../../app/theme.dart';
import '../badges/avatar.dart';

/// List item component with design system styling
class SharpsellListItem extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? trailingText;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onTap;
  final bool dense;
  final bool enabled;
  final bool selected;
  final Color? backgroundColor;

  const SharpsellListItem({
    super.key,
    this.title,
    this.subtitle,
    this.trailingText,
    this.leading,
    this.trailing,
    this.onTap,
    this.dense = false,
    this.enabled = true,
    this.selected = false,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final content = ListTile(
      leading: leading,
      title: title != null
          ? Text(
              title!,
              style: SharpsellTheme.paragraph1.copyWith(
                color: enabled ? SharpsellTheme.textPrimary : SharpsellTheme.textDisabled,
                fontWeight: selected ? SharpsellTheme.fontWeightBold : SharpsellTheme.fontWeightRegular,
              ),
            )
          : null,
      subtitle: subtitle != null
          ? Text(
              subtitle!,
              style: SharpsellTheme.paragraph3.copyWith(
                color: enabled ? SharpsellTheme.textSecondary : SharpsellTheme.textDisabled,
              ),
            )
          : null,
      trailing: trailing ??
          (trailingText != null
              ? Text(
                  trailingText!,
                  style: SharpsellTheme.paragraph3.copyWith(
                    color: SharpsellTheme.textSecondary,
                  ),
                )
              : null),
      onTap: enabled ? onTap : null,
      dense: dense,
      enabled: enabled,
      selected: selected,
      selectedTileColor: backgroundColor ?? SharpsellTheme.primaryAlpha10,
      contentPadding: EdgeInsets.symmetric(
        horizontal: SharpsellTheme.paddingMD,
        vertical: dense ? SharpsellTheme.paddingXS : SharpsellTheme.paddingSM,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
      ),
    );

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: SharpsellTheme.paddingMD,
        vertical: SharpsellTheme.inlineTight,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
      ),
      child: content,
    );
  }
}
