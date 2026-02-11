import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18193
/// 
/// **Category:** misc
/// **Figma Node:** 1:18193
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118193(

/// )
/// ```
class Component118193 extends StatelessWidget {
  /// Component content

  const Component118193({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118193 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118193',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
