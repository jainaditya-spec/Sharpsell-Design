import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_23114
/// 
/// **Category:** misc
/// **Figma Node:** 1:23114
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component123114(

/// )
/// ```
class Component123114 extends StatelessWidget {
  /// Component content

  const Component123114({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component123114 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component123114',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
