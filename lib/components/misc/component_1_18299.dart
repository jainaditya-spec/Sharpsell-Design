import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18299
/// 
/// **Category:** misc
/// **Figma Node:** 1:18299
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118299(

/// )
/// ```
class Component118299 extends StatelessWidget {
  /// Component content

  const Component118299({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118299 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118299',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
