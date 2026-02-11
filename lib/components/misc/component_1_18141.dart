import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18141
/// 
/// **Category:** misc
/// **Figma Node:** 1:18141
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118141(

/// )
/// ```
class Component118141 extends StatelessWidget {
  /// Component content

  const Component118141({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118141 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118141',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
