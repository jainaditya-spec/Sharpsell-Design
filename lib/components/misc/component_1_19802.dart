import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_19802
/// 
/// **Category:** misc
/// **Figma Node:** 1:19802
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component119802(

/// )
/// ```
class Component119802 extends StatelessWidget {
  /// Component content

  const Component119802({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component119802 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component119802',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
