import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_24224
/// 
/// **Category:** misc
/// **Figma Node:** 1:24224
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component124224(

/// )
/// ```
class Component124224 extends StatelessWidget {
  /// Component content

  const Component124224({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component124224 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component124224',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
