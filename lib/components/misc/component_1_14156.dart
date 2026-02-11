import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_14156
/// 
/// **Category:** misc
/// **Figma Node:** 1:14156
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component114156(

/// )
/// ```
class Component114156 extends StatelessWidget {
  /// Component content

  const Component114156({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component114156 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component114156',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
