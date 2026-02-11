import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_19865
/// 
/// **Category:** misc
/// **Figma Node:** 1:19865
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component119865(

/// )
/// ```
class Component119865 extends StatelessWidget {
  /// Component content

  const Component119865({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component119865 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component119865',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
