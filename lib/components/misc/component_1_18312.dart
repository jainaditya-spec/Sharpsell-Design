import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18312
/// 
/// **Category:** misc
/// **Figma Node:** 1:18312
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118312(

/// )
/// ```
class Component118312 extends StatelessWidget {
  /// Component content

  const Component118312({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118312 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118312',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
