import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_15610
/// 
/// **Category:** misc
/// **Figma Node:** 1:15610
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component115610(

/// )
/// ```
class Component115610 extends StatelessWidget {
  /// Component content

  const Component115610({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component115610 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component115610',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
