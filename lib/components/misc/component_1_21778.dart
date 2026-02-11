import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_21778
/// 
/// **Category:** misc
/// **Figma Node:** 1:21778
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component121778(

/// )
/// ```
class Component121778 extends StatelessWidget {
  /// Component content

  const Component121778({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component121778 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component121778',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
