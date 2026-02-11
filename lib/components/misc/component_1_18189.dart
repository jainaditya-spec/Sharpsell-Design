import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18189
/// 
/// **Category:** misc
/// **Figma Node:** 1:18189
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118189(

/// )
/// ```
class Component118189 extends StatelessWidget {
  /// Component content

  const Component118189({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118189 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118189',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
