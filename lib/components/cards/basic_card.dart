import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Basic card component
class BasicCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? content;
  final Widget? leading;
  final List<Widget>? actions;
  final bool showActions;
  final double elevation;
  final VoidCallback? onTap;

  const BasicCard({
    super.key,
    this.title,
    this.subtitle,
    this.content,
    this.leading,
    this.actions,
    this.showActions = false,
    this.elevation = SharpsellTheme.elevationLow,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
        child: Padding(
          padding: const EdgeInsets.all(SharpsellTheme.spacingM),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (title != null || subtitle != null || leading != null)
                Row(
                  children: [
                    if (leading != null) ...[
                      leading!,
                      const SizedBox(width: SharpsellTheme.spacingM),
                    ],
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (title != null)
                            Text(
                              title!,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          if (subtitle != null) ...[
                            const SizedBox(height: SharpsellTheme.spacingXS),
                            Text(
                              subtitle!,
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: SharpsellTheme.textSecondary,
                                  ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
              if (content != null) ...[
                if (title != null || subtitle != null)
                  const SizedBox(height: SharpsellTheme.spacingM),
                Text(
                  content!,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
              if (showActions && actions != null && actions!.isNotEmpty) ...[
                const SizedBox(height: SharpsellTheme.spacingM),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: actions!,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
