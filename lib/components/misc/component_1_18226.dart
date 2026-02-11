import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18226
/// 
/// **Category:** misc
/// **Figma Node:** 1:18226
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118226(

/// )
/// ```
class Component118226 extends StatelessWidget {
  /// Component content

  const Component118226({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118226 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118226',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
