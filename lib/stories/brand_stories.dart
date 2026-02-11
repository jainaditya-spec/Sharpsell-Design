import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/brand/logo.dart';
import '../app/theme.dart';

/// Brand component stories
List<Story> get brandStories {
  return [
    Story(
      name: 'Brand/Logo',
      description: 'Sharpsell logo component with various sizes',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(SharpsellTheme.paddingXL),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SharpsellLogo(
                size: context.knobs.options(
                  label: 'Size',
                  initial: LogoSize.medium,
                  options: [
                    Option(label: 'Small', value: LogoSize.small),
                    Option(label: 'Medium', value: LogoSize.medium),
                    Option(label: 'Large', value: LogoSize.large),
                    Option(label: 'XLarge', value: LogoSize.xlarge),
                  ],
                ),
                showText: context.knobs.boolean(label: 'Show Text', initial: true),
              ),
              const SizedBox(height: SharpsellTheme.sectionDefault),
              const Text('All Sizes:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: SharpsellTheme.stackDefault),
              const Row(
                children: [
                  SharpsellLogo(size: LogoSize.small),
                  SizedBox(width: SharpsellTheme.inlineDefault),
                  SharpsellLogo(size: LogoSize.medium),
                  SizedBox(width: SharpsellTheme.inlineDefault),
                  SharpsellLogo(size: LogoSize.large),
                  SizedBox(width: SharpsellTheme.inlineDefault),
                  SharpsellLogo(size: LogoSize.xlarge),
                ],
              ),
              const SizedBox(height: SharpsellTheme.sectionDefault),
              const Text('Icon Only:', style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: SharpsellTheme.stackDefault),
              const Row(
                children: [
                  SharpsellLogo(size: LogoSize.small, showText: false),
                  SizedBox(width: SharpsellTheme.inlineDefault),
                  SharpsellLogo(size: LogoSize.medium, showText: false),
                  SizedBox(width: SharpsellTheme.inlineDefault),
                  SharpsellLogo(size: LogoSize.large, showText: false),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  ];
}
