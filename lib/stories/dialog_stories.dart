import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/dialogs/dialog.dart';

/// Dialog component stories
List<Story> get dialogStories {
  return [
    Story(
      name: 'Dialogs/Dialog',
      description: 'Dialog components with various configurations',
      builder: (context) {
        final title = context.knobs.text(label: 'Title', initial: 'Dialog Title');
        final message = context.knobs.text(label: 'Message', initial: 'This is a dialog message');
        final primaryAction = context.knobs.text(label: 'Primary Action', initial: 'Confirm');
        final secondaryAction = context.knobs.text(label: 'Secondary Action', initial: 'Cancel');
        final showClose = context.knobs.boolean(label: 'Show Close', initial: true);
        
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    SharpsellDialog.show(
                      context: context,
                      title: title,
                      message: message,
                      primaryActionLabel: primaryAction,
                      secondaryActionLabel: secondaryAction,
                      showCloseButton: showClose,
                    );
                  },
                  child: const Text('Open Dialog'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    SharpsellDialog.show(
                      context: context,
                      title: 'Success Dialog',
                      message: 'Operation completed successfully!',
                      primaryActionLabel: 'OK',
                    );
                  },
                  child: const Text('Success Dialog'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    SharpsellDialog.show(
                      context: context,
                      title: 'Confirmation Dialog',
                      message: 'Are you sure you want to proceed?',
                      primaryActionLabel: 'Yes',
                      secondaryActionLabel: 'No',
                    );
                  },
                  child: const Text('Confirmation Dialog'),
                ),
              ],
            ),
          ),
        );
      },
    ),
  ];
}
