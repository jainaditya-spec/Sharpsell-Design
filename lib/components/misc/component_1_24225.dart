import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_24225
/// 
/// **Category:** misc
/// **Figma Node:** 1:24225
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component124225(

/// )
/// ```
class Component124225 extends StatelessWidget {
  /// Component content

  const Component124225({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component124225 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component124225',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
