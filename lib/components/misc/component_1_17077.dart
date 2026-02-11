import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_17077
/// 
/// **Category:** misc
/// **Figma Node:** 1:17077
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component117077(

/// )
/// ```
class Component117077 extends StatelessWidget {
  /// Component content

  const Component117077({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component117077 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component117077',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
