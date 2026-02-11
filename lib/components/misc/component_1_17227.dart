import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_17227
/// 
/// **Category:** misc
/// **Figma Node:** 1:17227
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component117227(

/// )
/// ```
class Component117227 extends StatelessWidget {
  /// Component content

  const Component117227({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component117227 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component117227',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
