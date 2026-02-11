import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_15611
/// 
/// **Category:** misc
/// **Figma Node:** 1:15611
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component115611(

/// )
/// ```
class Component115611 extends StatelessWidget {
  /// Component content

  const Component115611({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component115611 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component115611',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
