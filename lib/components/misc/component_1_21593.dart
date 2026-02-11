import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_21593
/// 
/// **Category:** misc
/// **Figma Node:** 1:21593
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component121593(

/// )
/// ```
class Component121593 extends StatelessWidget {
  /// Component content

  const Component121593({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component121593 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component121593',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
