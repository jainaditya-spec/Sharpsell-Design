import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_25233
/// 
/// **Category:** misc
/// **Figma Node:** 1:25233
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component125233(

/// )
/// ```
class Component125233 extends StatelessWidget {
  /// Component content

  const Component125233({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component125233 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component125233',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
