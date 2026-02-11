import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_21878
/// 
/// **Category:** misc
/// **Figma Node:** 1:21878
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component121878(

/// )
/// ```
class Component121878 extends StatelessWidget {
  /// Component content

  const Component121878({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component121878 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component121878',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
