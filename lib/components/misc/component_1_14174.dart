import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_14174
/// 
/// **Category:** misc
/// **Figma Node:** 1:14174
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component114174(

/// )
/// ```
class Component114174 extends StatelessWidget {
  /// Component content

  const Component114174({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component114174 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component114174',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
