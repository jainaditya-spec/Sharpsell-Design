import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_14192
/// 
/// **Category:** misc
/// **Figma Node:** 1:14192
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component114192(

/// )
/// ```
class Component114192 extends StatelessWidget {
  /// Component content

  const Component114192({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component114192 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component114192',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
