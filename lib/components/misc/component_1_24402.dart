import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_24402
/// 
/// **Category:** misc
/// **Figma Node:** 1:24402
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component124402(

/// )
/// ```
class Component124402 extends StatelessWidget {
  /// Component content

  const Component124402({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component124402 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component124402',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
