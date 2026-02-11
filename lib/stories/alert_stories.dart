import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/alerts/alert.dart';
import '../components/buttons/primary_button.dart';

/// Alert component stories
List<Story> get alertStories {
  return [
    Story(
      name: 'Alerts/Alert',
      description: 'Alert components with various variants',
      builder: (context) => Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SharpsellAlert(
                title: context.knobs.text(label: 'Title', initial: 'Alert Title'),
                message: context.knobs.text(label: 'Message', initial: 'This is an alert message'),
                variant: context.knobs.options(
                  label: 'Variant',
                  initial: AlertVariant.info,
                  options: [
                    Option(label: 'Success', value: AlertVariant.success),
                    Option(label: 'Warning', value: AlertVariant.warning),
                    Option(label: 'Error', value: AlertVariant.error),
                    Option(label: 'Info', value: AlertVariant.info),
                  ],
                ),
                onDismiss: context.knobs.boolean(label: 'Show Dismiss', initial: true) ? () {} : null,
              ),
              const SizedBox(height: 24),
              const Text('All Variants:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              SharpsellAlert(
                title: 'Success Alert',
                message: 'This is a success message',
                variant: AlertVariant.success,
                onDismiss: () {},
              ),
              const SizedBox(height: 16),
              SharpsellAlert(
                title: 'Warning Alert',
                message: 'This is a warning message',
                variant: AlertVariant.warning,
                onDismiss: () {},
              ),
              const SizedBox(height: 16),
              SharpsellAlert(
                title: 'Error Alert',
                message: 'This is an error message',
                variant: AlertVariant.error,
                onDismiss: () {},
              ),
              const SizedBox(height: 16),
              SharpsellAlert(
                title: 'Info Alert',
                message: 'This is an info message',
                variant: AlertVariant.info,
                onDismiss: () {},
              ),
              const SizedBox(height: 16),
              SharpsellAlert(
                title: 'Alert with Actions',
                message: 'This alert has action buttons',
                variant: AlertVariant.info,
                actions: [
                  PrimaryButton(
                    text: 'Action',
                    onPressed: () {},
                    size: ButtonSize.small,
                  ),
                ],
                onDismiss: () {},
              ),
            ],
          ),
        ),
      ),
    ),
  ];
}
