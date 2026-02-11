import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18195
/// 
/// **Category:** misc
/// **Figma Node:** 1:18195
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118195(

/// )
/// ```
class Component118195 extends StatelessWidget {
  /// Component content

  const Component118195({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118195 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118195',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
