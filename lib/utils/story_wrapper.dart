import 'package:flutter/material.dart';
import '../app/theme.dart';
import '../components/docs/component_docs.dart';

/// Enhanced story wrapper with documentation
class StoryWithDocs extends StatelessWidget {
  final Widget child;
  final ComponentDocs? docs;

  const StoryWithDocs({
    super.key,
    required this.child,
    this.docs,
  });

  @override
  Widget build(BuildContext context) {
    if (docs == null) {
      return child;
    }

    return Row(
      children: [
        Expanded(
          flex: 2,
          child: child,
        ),
        Container(
          width: 1,
          color: SharpsellTheme.lightGrey2,
        ),
        Expanded(
          flex: 1,
          child: ComponentDocumentation(docs: docs!),
        ),
      ],
    );
  }
}
