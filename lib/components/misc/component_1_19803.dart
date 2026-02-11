import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_19803
/// 
/// **Category:** misc
/// **Figma Node:** 1:19803
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component119803(

/// )
/// ```
class Component119803 extends StatelessWidget {
  /// Component content

  const Component119803({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component119803 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component119803',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
