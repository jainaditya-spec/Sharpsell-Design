import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_23233
/// 
/// **Category:** misc
/// **Figma Node:** 1:23233
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component123233(

/// )
/// ```
class Component123233 extends StatelessWidget {
  /// Component content

  const Component123233({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component123233 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component123233',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
