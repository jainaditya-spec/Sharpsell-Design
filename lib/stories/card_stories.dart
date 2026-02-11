import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/cards/basic_card.dart';

/// Card component stories
List<Story> get cardStories {
  return [
    Story(
      name: 'Cards/Basic',
      description: 'Basic card component with various configurations',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BasicCard(
            title: context.knobs.text(label: 'Title', initial: 'Card Title'),
            subtitle: context.knobs.text(label: 'Subtitle', initial: 'Card subtitle'),
            content: context.knobs.text(
              label: 'Content',
              initial: 'This is the card content area.',
            ),
            showActions: context.knobs.boolean(label: 'Show Actions', initial: true),
            elevation: context.knobs.slider(
              label: 'Elevation',
              initial: 2.0,
              min: 0.0,
              max: 8.0,
            ),
          ),
        ),
      ),
    ),
  ];
}
