import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/buttons/primary_button.dart';
import '../components/buttons/secondary_button.dart';
import '../components/buttons/outlined_button.dart';
import '../components/buttons/text_button.dart';
import '../components/docs/component_docs.dart';

/// Button component stories
List<Story> get buttonStories {
  final primaryButtonDocs = ComponentDocs(
    name: 'Primary Button',
    description: 'Primary action buttons are used for the main action on a screen. They should be used sparingly to maintain visual hierarchy.',
    category: 'Buttons',
    props: [
      'text (String, required): Button label text',
      'onPressed (VoidCallback?): Callback when button is pressed',
      'size (ButtonSize): Size variant - small, medium, or large',
      'enabled (bool): Whether the button is enabled',
      'icon (IconData?): Optional icon to display',
      'fullWidth (bool): Whether button should take full width',
    ],
    examples: [
      'Use for primary actions like "Submit", "Save", "Continue"',
      'Use medium size for most cases',
      'Use large size for hero sections or prominent CTAs',
      'Use small size for compact layouts or secondary actions',
    ],
    dos: [
      'Use for the most important action on a screen',
      'Limit to one primary button per screen',
      'Use clear, action-oriented labels',
      'Ensure sufficient contrast for accessibility',
    ],
    donts: [
      'Don\'t use multiple primary buttons on the same screen',
      'Don\'t use for destructive actions (use error variant)',
      'Don\'t use overly long text labels',
      'Don\'t disable without providing feedback',
    ],
    usage: '''
PrimaryButton(
  text: 'Submit',
  onPressed: () {
    // Handle action
  },
  size: ButtonSize.medium,
)
''',
  );

  return [
    Story(
      name: 'Buttons/Primary',
      description: 'Primary action buttons with various sizes and states',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PrimaryButton(
                text: context.knobs.text(label: 'Label', initial: 'Primary Button'),
                onPressed: () {},
                size: context.knobs.options(
                  label: 'Size',
                  initial: ButtonSize.medium,
                  options: [
                    Option(label: 'Small', value: ButtonSize.small),
                    Option(label: 'Medium', value: ButtonSize.medium),
                    Option(label: 'Large', value: ButtonSize.large),
                  ],
                ),
                enabled: context.knobs.boolean(label: 'Enabled', initial: true),
              ),
              const SizedBox(height: 16),
              PrimaryButton(
                text: 'Disabled',
                onPressed: null,
                size: ButtonSize.medium,
              ),
            ],
          ),
        ),
      ),
    ),
    Story(
      name: 'Buttons/Secondary',
      description: 'Secondary action buttons',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SecondaryButton(
                text: context.knobs.text(label: 'Label', initial: 'Secondary Button'),
                onPressed: () {},
                size: context.knobs.options(
                  label: 'Size',
                  initial: ButtonSize.medium,
                  options: [
                    Option(label: 'Small', value: ButtonSize.small),
                    Option(label: 'Medium', value: ButtonSize.medium),
                    Option(label: 'Large', value: ButtonSize.large),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Story(
      name: 'Buttons/Outlined',
      description: 'Outlined buttons with border',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OutlinedButtonComponent(
                text: context.knobs.text(label: 'Label', initial: 'Outlined Button'),
                onPressed: () {},
                size: context.knobs.options(
                  label: 'Size',
                  initial: ButtonSize.medium,
                  options: [
                    Option(label: 'Small', value: ButtonSize.small),
                    Option(label: 'Medium', value: ButtonSize.medium),
                    Option(label: 'Large', value: ButtonSize.large),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    Story(
      name: 'Buttons/Text',
      description: 'Text-only buttons',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextButtonComponent(
                text: context.knobs.text(label: 'Label', initial: 'Text Button'),
                onPressed: () {},
                size: context.knobs.options(
                  label: 'Size',
                  initial: ButtonSize.medium,
                  options: [
                    Option(label: 'Small', value: ButtonSize.small),
                    Option(label: 'Medium', value: ButtonSize.medium),
                    Option(label: 'Large', value: ButtonSize.large),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];
}
