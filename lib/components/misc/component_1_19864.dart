import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_19864
/// 
/// **Category:** misc
/// **Figma Node:** 1:19864
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component119864(

/// )
/// ```
class Component119864 extends StatelessWidget {
  /// Component content

  const Component119864({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component119864 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component119864',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
