import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_15298
/// 
/// **Category:** misc
/// **Figma Node:** 1:15298
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component115298(

/// )
/// ```
class Component115298 extends StatelessWidget {
  /// Component content

  const Component115298({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component115298 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component115298',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
