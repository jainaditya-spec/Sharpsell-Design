import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_23366
/// 
/// **Category:** misc
/// **Figma Node:** 1:23366
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component123366(

/// )
/// ```
class Component123366 extends StatelessWidget {
  /// Component content

  const Component123366({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component123366 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component123366',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
