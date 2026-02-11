import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/badges/badge.dart';
import '../components/badges/avatar.dart';

/// Badge and Avatar component stories
List<Story> get badgeStories {
  return [
    Story(
      name: 'Badges/Badge',
      description: 'Badge components with various variants and sizes',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  SharpsellBadge(
                    text: context.knobs.text(label: 'Text', initial: 'Badge'),
                    variant: context.knobs.options(
                      label: 'Variant',
                      initial: BadgeVariant.primary,
                      options: [
                        Option(label: 'Primary', value: BadgeVariant.primary),
                        Option(label: 'Secondary', value: BadgeVariant.secondary),
                        Option(label: 'Accent', value: BadgeVariant.accent),
                        Option(label: 'Success', value: BadgeVariant.success),
                        Option(label: 'Warning', value: BadgeVariant.warning),
                        Option(label: 'Error', value: BadgeVariant.error),
                        Option(label: 'Neutral', value: BadgeVariant.neutral),
                      ],
                    ),
                    size: context.knobs.options(
                      label: 'Size',
                      initial: BadgeSize.medium,
                      options: [
                        Option(label: 'Small', value: BadgeSize.small),
                        Option(label: 'Medium', value: BadgeSize.medium),
                        Option(label: 'Large', value: BadgeSize.large),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text('All Variants:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  SharpsellBadge(text: 'Primary', variant: BadgeVariant.primary),
                  SharpsellBadge(text: 'Secondary', variant: BadgeVariant.secondary),
                  SharpsellBadge(text: 'Accent', variant: BadgeVariant.accent),
                  SharpsellBadge(text: 'Success', variant: BadgeVariant.success),
                  SharpsellBadge(text: 'Warning', variant: BadgeVariant.warning),
                  SharpsellBadge(text: 'Error', variant: BadgeVariant.error),
                  SharpsellBadge(text: 'Neutral', variant: BadgeVariant.neutral),
                ],
              ),
              const SizedBox(height: 24),
              const Text('All Sizes:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: [
                  SharpsellBadge(text: 'Small', size: BadgeSize.small),
                  SharpsellBadge(text: 'Medium', size: BadgeSize.medium),
                  SharpsellBadge(text: 'Large', size: BadgeSize.large),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    Story(
      name: 'Badges/Avatar',
      description: 'Avatar components with initials, icons, and images',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SharpsellAvatar(
                    initials: context.knobs.text(label: 'Initials', initial: 'JD'),
                    size: context.knobs.options(
                      label: 'Size',
                      initial: AvatarSize.medium,
                      options: [
                        Option(label: 'Small', value: AvatarSize.small),
                        Option(label: 'Medium', value: AvatarSize.medium),
                        Option(label: 'Large', value: AvatarSize.large),
                        Option(label: 'XLarge', value: AvatarSize.xlarge),
                      ],
                    ),
                    showBadge: context.knobs.boolean(label: 'Show Badge', initial: false),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text('With Initials:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                children: const [
                  SharpsellAvatar(initials: 'JD', size: AvatarSize.small),
                  SizedBox(width: 16),
                  SharpsellAvatar(initials: 'JD', size: AvatarSize.medium),
                  SizedBox(width: 16),
                  SharpsellAvatar(initials: 'JD', size: AvatarSize.large),
                  SizedBox(width: 16),
                  SharpsellAvatar(initials: 'JD', size: AvatarSize.xlarge),
                ],
              ),
              const SizedBox(height: 24),
              const Text('With Icons:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                children: const [
                  SharpsellAvatar(icon: Icons.person, size: AvatarSize.small),
                  SizedBox(width: 16),
                  SharpsellAvatar(icon: Icons.person, size: AvatarSize.medium),
                  SizedBox(width: 16),
                  SharpsellAvatar(icon: Icons.person, size: AvatarSize.large),
                ],
              ),
              const SizedBox(height: 24),
              const Text('With Badge:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                children: const [
                  SharpsellAvatar(initials: 'JD', size: AvatarSize.medium, showBadge: true),
                  SizedBox(width: 16),
                  SharpsellAvatar(initials: 'JD', size: AvatarSize.large, showBadge: true),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  ];
}
