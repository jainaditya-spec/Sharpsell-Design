import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/navigation/tabs.dart';
import '../components/navigation/app_bar.dart';

/// Navigation component stories
List<Story> get navigationStories {
  return [
    Story(
      name: 'Navigation/Tabs',
      description: 'Tab navigation components',
      builder: (context) => Scaffold(
        appBar: AppBar(title: const Text('Tabs Example')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SharpsellTabs(
                tabs: context.knobs.options(
                  label: 'Tabs',
                  initial: ['Tab 1', 'Tab 2', 'Tab 3'],
                  options: [
                    Option(label: '2 Tabs', value: ['Tab 1', 'Tab 2']),
                    Option(label: '3 Tabs', value: ['Tab 1', 'Tab 2', 'Tab 3']),
                    Option(label: '4 Tabs', value: ['Tab 1', 'Tab 2', 'Tab 3', 'Tab 4']),
                  ],
                ),
                selectedIndex: context.knobs.sliderInt(
                  label: 'Selected Index',
                  initial: 0,
                  min: 0,
                  max: 2,
                ),
                onTabChanged: (index) {},
              ),
            ),
          ],
        ),
      ),
    ),
    Story(
      name: 'Navigation/App Bar',
      description: 'App bar components',
      builder: (context) => Scaffold(
        appBar: SharpsellAppBar(
          title: context.knobs.text(label: 'Title', initial: 'App Title'),
          centerTitle: context.knobs.boolean(label: 'Center Title', initial: false),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: const Center(
          child: Text('App Bar Example'),
        ),
      ),
    ),
  ];
}
