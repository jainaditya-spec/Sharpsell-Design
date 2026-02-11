import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_14186
/// 
/// **Category:** misc
/// **Figma Node:** 1:14186
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component114186(

/// )
/// ```
class Component114186 extends StatelessWidget {
  /// Component content

  const Component114186({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component114186 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component114186',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
