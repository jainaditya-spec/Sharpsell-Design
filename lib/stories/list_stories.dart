import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/lists/list_item.dart';
import '../components/badges/avatar.dart';
import '../components/badges/badge.dart';

/// List component stories
List<Story> get listStories {
  return [
    Story(
      name: 'Lists/List Item',
      description: 'List item components with various configurations',
      builder: (context) => Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [
            SharpsellListItem(
              title: context.knobs.text(label: 'Title', initial: 'List Item Title'),
              subtitle: context.knobs.text(label: 'Subtitle', initial: 'Subtitle text'),
              trailingText: context.knobs.text(label: 'Trailing', initial: 'Trailing'),
              leading: const SharpsellAvatar(initials: 'JD'),
              selected: context.knobs.boolean(label: 'Selected', initial: false),
              enabled: context.knobs.boolean(label: 'Enabled', initial: true),
            ),
            SharpsellListItem(
              title: 'With Avatar',
              subtitle: 'This item has an avatar',
              leading: const SharpsellAvatar(initials: 'AB'),
              trailingText: '2 min ago',
            ),
            SharpsellListItem(
              title: 'With Badge',
              subtitle: 'This item has a badge',
              trailing: const SharpsellBadge(text: 'New', variant: BadgeVariant.success),
            ),
            SharpsellListItem(
              title: 'Selected Item',
              subtitle: 'This item is selected',
              selected: true,
              leading: const SharpsellAvatar(initials: 'CD'),
            ),
            SharpsellListItem(
              title: 'Disabled Item',
              subtitle: 'This item is disabled',
              enabled: false,
            ),
            SharpsellListItem(
              title: 'Dense Item',
              subtitle: 'This is a dense list item',
              dense: true,
            ),
          ],
        ),
      ),
    ),
  ];
}
