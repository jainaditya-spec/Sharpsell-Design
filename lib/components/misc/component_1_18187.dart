import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18187
/// 
/// **Category:** misc
/// **Figma Node:** 1:18187
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118187(

/// )
/// ```
class Component118187 extends StatelessWidget {
  /// Component content

  const Component118187({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118187 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118187',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
