import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_15300
/// 
/// **Category:** misc
/// **Figma Node:** 1:15300
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component115300(

/// )
/// ```
class Component115300 extends StatelessWidget {
  /// Component content

  const Component115300({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component115300 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component115300',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
