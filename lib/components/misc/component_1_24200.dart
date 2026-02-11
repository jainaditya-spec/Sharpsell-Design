import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_24200
/// 
/// **Category:** misc
/// **Figma Node:** 1:24200
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component124200(

/// )
/// ```
class Component124200 extends StatelessWidget {
  /// Component content

  const Component124200({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component124200 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component124200',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
