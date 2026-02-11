import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component_1_19982
/// 
/// **Category:** misc
/// **Figma Node:** 1:19982
/// 
/// Component from Sharpsell Design System.
/// 
/// **Props:**
/// - `content` (String): Component content
/// 
/// **Usage Example:**
/// ```dart
/// Component119982(

/// )
/// ```
class Component119982 extends StatelessWidget {
  /// Component content

  const Component119982({
    super.key,
    String? content,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement Component119982 based on Figma design (Node: unknown)
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        'Component119982',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
