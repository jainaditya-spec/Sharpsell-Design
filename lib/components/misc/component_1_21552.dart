import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_21552
/// 
/// **Category:** misc
/// **Figma Node:** 1:21552
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component121552(

/// )
/// ```
class Component121552 extends StatelessWidget {
  /// Component content

  const Component121552({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component121552 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component121552',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
