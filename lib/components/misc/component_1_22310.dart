import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_22310
/// 
/// **Category:** misc
/// **Figma Node:** 1:22310
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component122310(

/// )
/// ```
class Component122310 extends StatelessWidget {
  /// Component content

  const Component122310({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component122310 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component122310',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
