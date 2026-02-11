import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_13876
/// 
/// **Category:** misc
/// **Figma Node:** 1:13876
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component113876(

/// )
/// ```
class Component113876 extends StatelessWidget {
  /// Component content

  const Component113876({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component113876 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component113876',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
