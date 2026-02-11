import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_23905
/// 
/// **Category:** misc
/// **Figma Node:** 1:23905
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component123905(

/// )
/// ```
class Component123905 extends StatelessWidget {
  /// Component content

  const Component123905({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component123905 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component123905',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
