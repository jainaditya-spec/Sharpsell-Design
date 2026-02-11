import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_15718
/// 
/// **Category:** misc
/// **Figma Node:** 1:15718
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component115718(

/// )
/// ```
class Component115718 extends StatelessWidget {
  /// Component content

  const Component115718({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component115718 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component115718',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
