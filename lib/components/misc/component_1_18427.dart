import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18427
/// 
/// **Category:** misc
/// **Figma Node:** 1:18427
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118427(

/// )
/// ```
class Component118427 extends StatelessWidget {
  /// Component content

  const Component118427({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118427 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118427',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
