import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_14180
/// 
/// **Category:** misc
/// **Figma Node:** 1:14180
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component114180(

/// )
/// ```
class Component114180 extends StatelessWidget {
  /// Component content

  const Component114180({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component114180 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component114180',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
