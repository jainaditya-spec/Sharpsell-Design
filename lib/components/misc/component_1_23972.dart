import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_23972
/// 
/// **Category:** misc
/// **Figma Node:** 1:23972
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component123972(

/// )
/// ```
class Component123972 extends StatelessWidget {
  /// Component content

  const Component123972({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component123972 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component123972',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
