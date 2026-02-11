import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_21571
/// 
/// **Category:** misc
/// **Figma Node:** 1:21571
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component121571(

/// )
/// ```
class Component121571 extends StatelessWidget {
  /// Component content

  const Component121571({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component121571 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component121571',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
