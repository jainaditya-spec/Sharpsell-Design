import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18352
/// 
/// **Category:** misc
/// **Figma Node:** 1:18352
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118352(

/// )
/// ```
class Component118352 extends StatelessWidget {
  /// Component content

  const Component118352({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118352 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118352',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
