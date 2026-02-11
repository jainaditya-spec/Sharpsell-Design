import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/chips/basic_chip.dart';

/// Chip component stories
List<Story> get chipStories {
  return [
    Story(
      name: 'Chips/Basic',
      description: 'Basic chip component with selection and deletion',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              BasicChip(
                label: context.knobs.text(label: 'Label', initial: 'Chip'),
                selected: context.knobs.boolean(label: 'Selected', initial: false),
                icon: context.knobs.boolean(label: 'Show Icon', initial: false)
                    ? Icons.tag
                    : null,
                onDeleted: context.knobs.boolean(label: 'Deletable', initial: false)
                    ? () {}
                    : null,
              ),
            ],
          ),
        ),
      ),
    ),
  ];
}
