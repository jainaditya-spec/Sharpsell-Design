import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_16398
/// 
/// **Category:** misc
/// **Figma Node:** 1:16398
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component116398(

/// )
/// ```
class Component116398 extends StatelessWidget {
  /// Component content

  const Component116398({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component116398 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component116398',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
