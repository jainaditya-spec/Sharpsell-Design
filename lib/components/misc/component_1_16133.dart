import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_16133
/// 
/// **Category:** misc
/// **Figma Node:** 1:16133
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component116133(

/// )
/// ```
class Component116133 extends StatelessWidget {
  /// Component content

  const Component116133({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component116133 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component116133',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
