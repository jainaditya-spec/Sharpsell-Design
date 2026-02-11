import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18197
/// 
/// **Category:** misc
/// **Figma Node:** 1:18197
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118197(

/// )
/// ```
class Component118197 extends StatelessWidget {
  /// Component content

  const Component118197({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118197 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118197',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
