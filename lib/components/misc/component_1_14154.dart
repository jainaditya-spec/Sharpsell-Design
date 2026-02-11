import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_14154
/// 
/// **Category:** misc
/// **Figma Node:** 1:14154
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component114154(

/// )
/// ```
class Component114154 extends StatelessWidget {
  /// Component content

  const Component114154({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component114154 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component114154',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
