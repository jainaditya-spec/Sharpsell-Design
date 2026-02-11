import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_21928
/// 
/// **Category:** misc
/// **Figma Node:** 1:21928
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component121928(

/// )
/// ```
class Component121928 extends StatelessWidget {
  /// Component content

  const Component121928({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component121928 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component121928',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
