import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_15963
/// 
/// **Category:** misc
/// **Figma Node:** 1:15963
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component115963(

/// )
/// ```
class Component115963 extends StatelessWidget {
  /// Component content

  const Component115963({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component115963 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component115963',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
