import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_17621
/// 
/// **Category:** misc
/// **Figma Node:** 1:17621
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component117621(

/// )
/// ```
class Component117621 extends StatelessWidget {
  /// Component content

  const Component117621({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component117621 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component117621',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
