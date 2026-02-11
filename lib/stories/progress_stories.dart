import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/progress/linear_progress.dart';
import '../components/progress/circular_progress.dart';

/// Progress indicator component stories
List<Story> get progressStories {
  return [
    Story(
      name: 'Progress/Linear',
      description: 'Linear progress indicators',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SharpsellLinearProgress(
                value: context.knobs.slider(
                  label: 'Progress',
                  initial: 0.5,
                  min: 0,
                  max: 1,
                ),
                variant: context.knobs.options(
                  label: 'Variant',
                  initial: ProgressVariant.primary,
                  options: [
                    Option(label: 'Primary', value: ProgressVariant.primary),
                    Option(label: 'Secondary', value: ProgressVariant.secondary),
                    Option(label: 'Accent', value: ProgressVariant.accent),
                    Option(label: 'Success', value: ProgressVariant.success),
                    Option(label: 'Warning', value: ProgressVariant.warning),
                    Option(label: 'Error', value: ProgressVariant.error),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text('All Variants:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              SharpsellLinearProgress(value: 0.3, variant: ProgressVariant.primary),
              const SizedBox(height: 8),
              SharpsellLinearProgress(value: 0.5, variant: ProgressVariant.secondary),
              const SizedBox(height: 8),
              SharpsellLinearProgress(value: 0.7, variant: ProgressVariant.accent),
              const SizedBox(height: 8),
              SharpsellLinearProgress(value: 0.4, variant: ProgressVariant.success),
              const SizedBox(height: 8),
              SharpsellLinearProgress(value: 0.6, variant: ProgressVariant.warning),
              const SizedBox(height: 8),
              SharpsellLinearProgress(value: 0.8, variant: ProgressVariant.error),
              const SizedBox(height: 24),
              const Text('Indeterminate:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const SharpsellLinearProgress(),
            ],
          ),
        ),
      ),
    ),
    Story(
      name: 'Progress/Circular',
      description: 'Circular progress indicators',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SharpsellCircularProgress(
                value: context.knobs.slider(
                  label: 'Progress',
                  initial: 0.5,
                  min: 0,
                  max: 1,
                ),
                variant: context.knobs.options(
                  label: 'Variant',
                  initial: ProgressVariant.primary,
                  options: [
                    Option(label: 'Primary', value: ProgressVariant.primary),
                    Option(label: 'Secondary', value: ProgressVariant.secondary),
                    Option(label: 'Accent', value: ProgressVariant.accent),
                    Option(label: 'Success', value: ProgressVariant.success),
                    Option(label: 'Warning', value: ProgressVariant.warning),
                    Option(label: 'Error', value: ProgressVariant.error),
                  ],
                ),
                size: context.knobs.slider(
                  label: 'Size',
                  initial: 40,
                  min: 20,
                  max: 80,
                ),
              ),
              const SizedBox(height: 48),
              const Text('All Variants:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SharpsellCircularProgress(value: 0.3, variant: ProgressVariant.primary),
                  SharpsellCircularProgress(value: 0.5, variant: ProgressVariant.secondary),
                  SharpsellCircularProgress(value: 0.7, variant: ProgressVariant.accent),
                  SharpsellCircularProgress(value: 0.4, variant: ProgressVariant.success),
                  SharpsellCircularProgress(value: 0.6, variant: ProgressVariant.warning),
                  SharpsellCircularProgress(value: 0.8, variant: ProgressVariant.error),
                ],
              ),
              const SizedBox(height: 48),
              const Text('Indeterminate:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              const SharpsellCircularProgress(),
            ],
          ),
        ),
      ),
    ),
  ];
}
