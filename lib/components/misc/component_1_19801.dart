import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_19801
/// 
/// **Category:** misc
/// **Figma Node:** 1:19801
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component119801(

/// )
/// ```
class Component119801 extends StatelessWidget {
  /// Component content

  const Component119801({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component119801 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component119801',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
