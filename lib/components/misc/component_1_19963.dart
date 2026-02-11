import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_19963
/// 
/// **Category:** misc
/// **Figma Node:** 1:19963
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component119963(

/// )
/// ```
class Component119963 extends StatelessWidget {
  /// Component content

  const Component119963({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component119963 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component119963',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
