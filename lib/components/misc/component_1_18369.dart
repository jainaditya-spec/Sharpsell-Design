import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_18369
/// 
/// **Category:** misc
/// **Figma Node:** 1:18369
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component118369(

/// )
/// ```
class Component118369 extends StatelessWidget {
  /// Component content

  const Component118369({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component118369 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component118369',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
