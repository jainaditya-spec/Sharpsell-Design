import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18289
/// 
/// **Category:** misc
/// **Figma Node:** 1:18289
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118289(

/// )
/// ```
class Component118289 extends StatelessWidget {
  /// Component content

  const Component118289({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118289 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118289',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
