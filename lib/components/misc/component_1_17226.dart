import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_17226
/// 
/// **Category:** misc
/// **Figma Node:** 1:17226
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component117226(

/// )
/// ```
class Component117226 extends StatelessWidget {
  /// Component content

  const Component117226({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component117226 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component117226',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
