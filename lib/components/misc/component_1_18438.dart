import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18438
/// 
/// **Category:** misc
/// **Figma Node:** 1:18438
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118438(

/// )
/// ```
class Component118438 extends StatelessWidget {
  /// Component content

  const Component118438({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118438 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118438',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
