import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_13865
/// 
/// **Category:** misc
/// **Figma Node:** 1:13865
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component113865(

/// )
/// ```
class Component113865 extends StatelessWidget {
  /// Component content

  const Component113865({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component113865 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component113865',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
