import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_15969
/// 
/// **Category:** misc
/// **Figma Node:** 1:15969
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component115969(

/// )
/// ```
class Component115969 extends StatelessWidget {
  /// Component content

  const Component115969({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component115969 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component115969',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
