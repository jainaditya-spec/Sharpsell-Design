import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_21809
/// 
/// **Category:** misc
/// **Figma Node:** 1:21809
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component121809(

/// )
/// ```
class Component121809 extends StatelessWidget {
  /// Component content

  const Component121809({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component121809 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component121809',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
