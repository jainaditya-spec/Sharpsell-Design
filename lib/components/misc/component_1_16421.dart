import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_16421
/// 
/// **Category:** misc
/// **Figma Node:** 1:16421
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component116421(

/// )
/// ```
class Component116421 extends StatelessWidget {
  /// Component content

  const Component116421({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component116421 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component116421',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
