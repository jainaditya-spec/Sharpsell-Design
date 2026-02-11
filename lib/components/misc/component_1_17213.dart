import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_17213
/// 
/// **Category:** misc
/// **Figma Node:** 1:17213
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component117213(

/// )
/// ```
class Component117213 extends StatelessWidget {
  /// Component content

  const Component117213({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component117213 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component117213',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
