import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/inputs/text_field.dart';
import '../components/inputs/checkbox.dart';
import '../components/inputs/radio_button.dart';
import '../components/inputs/switch.dart' as switch_component;

/// Input component stories
List<Story> get inputStories {
  return [
    Story(
      name: 'Inputs/Text Field',
      description: 'Text input fields with various states and configurations',
      builder: (context) => Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SharpsellTextField(
                label: context.knobs.text(label: 'Label', initial: 'Email'),
                hint: context.knobs.text(label: 'Hint', initial: 'Enter your email'),
                helperText: context.knobs.text(label: 'Helper Text', initial: 'We\'ll never share your email'),
                enabled: context.knobs.boolean(label: 'Enabled', initial: true),
              ),
              const SizedBox(height: 24),
              SharpsellTextField(
                label: 'Password',
                hint: 'Enter password',
                obscureText: true,
                suffixIcon: const Icon(Icons.visibility),
              ),
              const SizedBox(height: 24),
              SharpsellTextField(
                label: 'With Error',
                hint: 'This field has an error',
                errorText: 'This field is required',
              ),
              const SizedBox(height: 24),
              SharpsellTextField(
                label: 'Disabled',
                hint: 'This field is disabled',
                enabled: false,
              ),
              const SizedBox(height: 24),
              SharpsellTextField(
                label: 'With Icon',
                hint: 'Search...',
                prefixIcon: const Icon(Icons.search),
              ),
            ],
          ),
        ),
      ),
    ),
    Story(
      name: 'Inputs/Checkbox',
      description: 'Checkbox inputs with various states',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SharpsellCheckbox(
                value: context.knobs.boolean(label: 'Checked', initial: false),
                onChanged: (value) {},
                label: context.knobs.text(label: 'Label', initial: 'Accept terms and conditions'),
              ),
              const SizedBox(height: 16),
              SharpsellCheckbox(
                value: true,
                onChanged: (value) {},
                label: 'Checked',
              ),
              const SizedBox(height: 16),
              SharpsellCheckbox(
                value: false,
                onChanged: null,
                label: 'Disabled',
              ),
            ],
          ),
        ),
      ),
    ),
    Story(
      name: 'Inputs/Radio',
      description: 'Radio button inputs',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SharpsellRadio<String>(
                value: 'option1',
                groupValue: context.knobs.options(
                  label: 'Selected',
                  initial: 'option1',
                  options: [
                    Option(label: 'Option 1', value: 'option1'),
                    Option(label: 'Option 2', value: 'option2'),
                    Option(label: 'Option 3', value: 'option3'),
                  ],
                ),
                onChanged: (value) {},
                label: 'Option 1',
              ),
              const SizedBox(height: 8),
              SharpsellRadio<String>(
                value: 'option2',
                groupValue: 'option1',
                onChanged: (value) {},
                label: 'Option 2',
              ),
              const SizedBox(height: 8),
              SharpsellRadio<String>(
                value: 'option3',
                groupValue: 'option1',
                onChanged: null,
                label: 'Disabled',
              ),
            ],
          ),
        ),
      ),
    ),
    Story(
      name: 'Inputs/Switch',
      description: 'Switch/toggle inputs',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              switch_component.SharpsellSwitch(
                value: context.knobs.boolean(label: 'Value', initial: false),
                onChanged: (value) {},
                label: context.knobs.text(label: 'Label', initial: 'Enable notifications'),
              ),
              const SizedBox(height: 16),
              switch_component.SharpsellSwitch(
                value: true,
                onChanged: (value) {},
                label: 'Enabled',
              ),
              const SizedBox(height: 16),
              switch_component.SharpsellSwitch(
                value: false,
                onChanged: null,
                label: 'Disabled',
              ),
            ],
          ),
        ),
      ),
    ),
  ];
}
