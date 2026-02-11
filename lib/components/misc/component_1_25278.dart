import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_25278
/// 
/// **Category:** misc
/// **Figma Node:** 1:25278
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component125278(

/// )
/// ```
class Component125278 extends StatelessWidget {
  /// Component content

  const Component125278({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component125278 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component125278',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
