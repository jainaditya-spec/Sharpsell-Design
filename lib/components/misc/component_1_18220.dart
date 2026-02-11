import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18220
/// 
/// **Category:** misc
/// **Figma Node:** 1:18220
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118220(

/// )
/// ```
class Component118220 extends StatelessWidget {
  /// Component content

  const Component118220({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118220 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118220',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
