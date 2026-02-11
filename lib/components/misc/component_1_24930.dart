import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_24930
/// 
/// **Category:** misc
/// **Figma Node:** 1:24930
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component124930(

/// )
/// ```
class Component124930 extends StatelessWidget {
  /// Component content

  const Component124930({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component124930 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component124930',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
