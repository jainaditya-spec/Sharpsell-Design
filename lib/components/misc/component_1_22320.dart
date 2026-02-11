import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_22320
/// 
/// **Category:** misc
/// **Figma Node:** 1:22320
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component122320(

/// )
/// ```
class Component122320 extends StatelessWidget {
  /// Component content

  const Component122320({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component122320 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component122320',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
