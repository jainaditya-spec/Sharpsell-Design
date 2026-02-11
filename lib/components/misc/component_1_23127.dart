import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_23127
/// 
/// **Category:** misc
/// **Figma Node:** 1:23127
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component123127(

/// )
/// ```
class Component123127 extends StatelessWidget {
  /// Component content

  const Component123127({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component123127 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component123127',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
