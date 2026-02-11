import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_24227
/// 
/// **Category:** misc
/// **Figma Node:** 1:24227
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component124227(

/// )
/// ```
class Component124227 extends StatelessWidget {
  /// Component content

  const Component124227({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component124227 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component124227',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
