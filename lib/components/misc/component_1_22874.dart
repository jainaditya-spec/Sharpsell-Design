import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_22874
/// 
/// **Category:** misc
/// **Figma Node:** 1:22874
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component122874(

/// )
/// ```
class Component122874 extends StatelessWidget {
  /// Component content

  const Component122874({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component122874 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component122874',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
