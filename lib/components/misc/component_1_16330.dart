import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_16330
/// 
/// **Category:** misc
/// **Figma Node:** 1:16330
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component116330(

/// )
/// ```
class Component116330 extends StatelessWidget {
  /// Component content

  const Component116330({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component116330 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component116330',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
