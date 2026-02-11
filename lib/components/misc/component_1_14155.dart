import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_14155
/// 
/// **Category:** misc
/// **Figma Node:** 1:14155
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component114155(

/// )
/// ```
class Component114155 extends StatelessWidget {
  /// Component content

  const Component114155({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component114155 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component114155',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
