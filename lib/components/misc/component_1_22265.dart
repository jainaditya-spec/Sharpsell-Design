import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_22265
/// 
/// **Category:** misc
/// **Figma Node:** 1:22265
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component122265(

/// )
/// ```
class Component122265 extends StatelessWidget {
  /// Component content

  const Component122265({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component122265 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component122265',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
