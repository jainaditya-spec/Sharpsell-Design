import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_21891
/// 
/// **Category:** misc
/// **Figma Node:** 1:21891
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component121891(

/// )
/// ```
class Component121891 extends StatelessWidget {
  /// Component content

  const Component121891({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component121891 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component121891',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
