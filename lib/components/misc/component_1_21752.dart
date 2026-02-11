import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_21752
/// 
/// **Category:** misc
/// **Figma Node:** 1:21752
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component121752(

/// )
/// ```
class Component121752 extends StatelessWidget {
  /// Component content

  const Component121752({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component121752 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component121752',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
