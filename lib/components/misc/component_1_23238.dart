import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_23238
/// 
/// **Category:** misc
/// **Figma Node:** 1:23238
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component123238(

/// )
/// ```
class Component123238 extends StatelessWidget {
  /// Component content

  const Component123238({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component123238 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component123238',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
