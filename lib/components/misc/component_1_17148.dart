import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_17148
/// 
/// **Category:** misc
/// **Figma Node:** 1:17148
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component117148(

/// )
/// ```
class Component117148 extends StatelessWidget {
  /// Component content

  const Component117148({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component117148 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component117148',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
