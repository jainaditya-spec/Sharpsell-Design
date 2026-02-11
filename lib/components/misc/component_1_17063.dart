import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_17063
/// 
/// **Category:** misc
/// **Figma Node:** 1:17063
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component117063(

/// )
/// ```
class Component117063 extends StatelessWidget {
  /// Component content

  const Component117063({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component117063 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component117063',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
