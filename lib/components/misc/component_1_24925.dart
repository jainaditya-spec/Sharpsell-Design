import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_24925
/// 
/// **Category:** misc
/// **Figma Node:** 1:24925
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component124925(

/// )
/// ```
class Component124925 extends StatelessWidget {
  /// Component content

  const Component124925({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component124925 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component124925',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
