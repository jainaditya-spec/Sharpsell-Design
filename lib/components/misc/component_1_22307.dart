import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_22307
/// 
/// **Category:** misc
/// **Figma Node:** 1:22307
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component122307(

/// )
/// ```
class Component122307 extends StatelessWidget {
  /// Component content

  const Component122307({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component122307 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component122307',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
