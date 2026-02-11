import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_19797
/// 
/// **Category:** misc
/// **Figma Node:** 1:19797
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component119797(

/// )
/// ```
class Component119797 extends StatelessWidget {
  /// Component content

  const Component119797({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component119797 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component119797',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
