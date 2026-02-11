import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// App bar component with design system styling
class SharpsellAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final Widget? leading;
  final bool automaticallyImplyLeading;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double elevation;
  final bool centerTitle;

  const SharpsellAppBar({
    super.key,
    this.title,
    this.titleWidget,
    this.actions,
    this.leading,
    this.automaticallyImplyLeading = true,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation = SharpsellTheme.elevationMedium,
    this.centerTitle = false,
  }) : assert(title != null || titleWidget != null, 'Either title or titleWidget must be provided');

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: titleWidget ??
          (title != null
              ? Text(
                  title!,
                  style: SharpsellTheme.heading3.copyWith(
                    color: foregroundColor ?? SharpsellTheme.white,
                  ),
                )
              : null),
      leading: leading,
      automaticallyImplyLeading: automaticallyImplyLeading,
      actions: actions,
      backgroundColor: backgroundColor ?? SharpsellTheme.primaryColor,
      foregroundColor: foregroundColor ?? SharpsellTheme.white,
      elevation: elevation,
      centerTitle: centerTitle,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(SharpsellTheme.radiusMD),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
