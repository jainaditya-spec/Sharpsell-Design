import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18183
/// 
/// **Category:** misc
/// **Figma Node:** 1:18183
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118183(

/// )
/// ```
class Component118183 extends StatelessWidget {
  /// Component content

  const Component118183({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118183 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118183',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
