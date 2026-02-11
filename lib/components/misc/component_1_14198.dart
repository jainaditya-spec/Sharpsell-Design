import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_14198
/// 
/// **Category:** misc
/// **Figma Node:** 1:14198
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component114198(

/// )
/// ```
class Component114198 extends StatelessWidget {
  /// Component content

  const Component114198({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component114198 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component114198',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
