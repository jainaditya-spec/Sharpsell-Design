import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_17650
/// 
/// **Category:** misc
/// **Figma Node:** 1:17650
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component117650(

/// )
/// ```
class Component117650 extends StatelessWidget {
  /// Component content

  const Component117650({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component117650 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component117650',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
