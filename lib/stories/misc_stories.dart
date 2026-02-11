import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/misc/divider.dart';
import '../components/misc/tooltip.dart';

/// Miscellaneous component stories
List<Story> get miscStories {
  return [
    Story(
      name: 'Misc/Divider',
      description: 'Divider components',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text('Content above'),
              SharpsellDivider(
                height: context.knobs.slider(
                  label: 'Height',
                  initial: 16,
                  min: 8,
                  max: 32,
                ),
                thickness: context.knobs.slider(
                  label: 'Thickness',
                  initial: 1,
                  min: 1,
                  max: 4,
                ),
                indent: context.knobs.slider(
                  label: 'Indent',
                  initial: 0,
                  min: 0,
                  max: 100,
                ),
                endIndent: context.knobs.slider(
                  label: 'End Indent',
                  initial: 0,
                  min: 0,
                  max: 100,
                ),
              ),
              const Text('Content below'),
              const SizedBox(height: 24),
              const Text('Default Divider'),
              const SharpsellDivider(),
              const SizedBox(height: 24),
              const Text('Thick Divider'),
              SharpsellDivider(thickness: 2),
            ],
          ),
        ),
      ),
    ),
    Story(
      name: 'Misc/Tooltip',
      description: 'Tooltip components',
      builder: (context) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SharpsellTooltip(
                message: context.knobs.text(
                  label: 'Tooltip Message',
                  initial: 'This is a tooltip',
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Hover for Tooltip'),
                ),
              ),
              const SizedBox(height: 48),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SharpsellTooltip(
                    message: 'Primary Tooltip',
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Primary'),
                    ),
                  ),
                  SharpsellTooltip(
                    message: 'Secondary Tooltip',
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Secondary'),
                    ),
                  ),
                  SharpsellTooltip(
                    message: 'Icon Tooltip',
                    child: IconButton(
                      icon: const Icon(Icons.info),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  ];
}
