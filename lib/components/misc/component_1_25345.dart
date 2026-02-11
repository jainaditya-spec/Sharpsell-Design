import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_25345
/// 
/// **Category:** misc
/// **Figma Node:** 1:25345
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component125345(

/// )
/// ```
class Component125345 extends StatelessWidget {
  /// Component content

  const Component125345({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component125345 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component125345',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
