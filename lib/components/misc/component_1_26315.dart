import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_26315
/// 
/// **Category:** misc
/// **Figma Node:** 1:26315
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component126315(

/// )
/// ```
class Component126315 extends StatelessWidget {
  /// Component content

  const Component126315({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component126315 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component126315',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
