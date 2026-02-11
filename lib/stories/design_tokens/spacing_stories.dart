import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../../app/theme.dart';

/// Spacing guide stories
List<Story> get spacingStories {
  return [
    Story(
      name: 'Design Tokens/Spacing/Primitives',
      description: 'Primitive spacing tokens from the design system',
      builder: (context) => Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(SharpsellTheme.paddingXL),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Spacing Primitives', style: SharpsellTheme.heading1),
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              Text(
                'Spacing tokens are used consistently throughout the design system to maintain visual harmony.',
                style: SharpsellTheme.paragraph1.copyWith(
                  color: SharpsellTheme.textSecondary,
                ),
              ),
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Component Padding
              _SpacingSection(
                title: 'Component Padding',
                description: 'Padding for components and containers',
                spacings: [
                  _SpacingItem('XS', SharpsellTheme.paddingXS, '4px', 'Tight spacing for small elements'),
                  _SpacingItem('SM', SharpsellTheme.paddingSM, '8px', 'Small padding for compact components'),
                  _SpacingItem('MD', SharpsellTheme.paddingMD, '12px', 'Medium padding for standard components'),
                  _SpacingItem('LG', SharpsellTheme.paddingLG, '16px', 'Large padding for prominent components'),
                  _SpacingItem('XL', SharpsellTheme.paddingXL, '24px', 'Extra large padding for spacious layouts'),
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Stack Spacing
              _SpacingSection(
                title: 'Stack Spacing (Vertical)',
                description: 'Spacing between vertically stacked elements',
                spacings: [
                  _SpacingItem('Tight', SharpsellTheme.stackTight, '4px', 'Minimal vertical spacing'),
                  _SpacingItem('Default', SharpsellTheme.stackDefault, '8px', 'Standard vertical spacing'),
                  _SpacingItem('Loose', SharpsellTheme.stackLoose, '12px', 'Relaxed vertical spacing'),
                  _SpacingItem('Relaxed', SharpsellTheme.stackRelaxed, '16px', 'Generous vertical spacing'),
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Inline Spacing
              _SpacingSection(
                title: 'Inline Spacing (Horizontal)',
                description: 'Spacing between horizontally aligned elements',
                spacings: [
                  _SpacingItem('Tight', SharpsellTheme.inlineTight, '2px', 'Minimal horizontal spacing'),
                  _SpacingItem('Default', SharpsellTheme.inlineDefault, '4px', 'Standard horizontal spacing'),
                  _SpacingItem('Loose', SharpsellTheme.inlineLoose, '8px', 'Relaxed horizontal spacing'),
                  _SpacingItem('Relaxed', SharpsellTheme.inlineRelaxed, '12px', 'Generous horizontal spacing'),
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Section Spacing
              _SpacingSection(
                title: 'Section Spacing',
                description: 'Spacing between major sections',
                spacings: [
                  _SpacingItem('Default', SharpsellTheme.sectionDefault, '24px', 'Standard section spacing'),
                  _SpacingItem('Large', SharpsellTheme.sectionLarge, '32px', 'Large section spacing'),
                  _SpacingItem('XL', SharpsellTheme.sectionXL, '40px', 'Extra large section spacing'),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    Story(
      name: 'Design Tokens/Spacing/Usage',
      description: 'How to use spacing tokens',
      builder: (context) => Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(SharpsellTheme.paddingXL),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Spacing Usage Guide', style: SharpsellTheme.heading1),
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              _SpacingUsageExample(
                title: 'Component Padding',
                description: 'Use padding tokens for internal spacing within components',
                code: '''
Container(
  padding: EdgeInsets.all(SharpsellTheme.paddingMD),
  child: Text('Content'),
)
''',
                visual: Container(
                  padding: const EdgeInsets.all(SharpsellTheme.paddingMD),
                  decoration: BoxDecoration(
                    color: SharpsellTheme.primaryAlpha10,
                    borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
                  ),
                  child: const Text('Content with padding'),
                ),
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              _SpacingUsageExample(
                title: 'Stack Spacing',
                description: 'Use stack spacing for vertical gaps between elements',
                code: '''
Column(
  children: [
    Widget1(),
    SizedBox(height: SharpsellTheme.stackDefault),
    Widget2(),
  ],
)
''',
                visual: Column(
                  children: [
                    Container(
                      height: 50,
                      color: SharpsellTheme.primaryColor,
                    ),
                    const SizedBox(height: SharpsellTheme.stackDefault),
                    Container(
                      height: 50,
                      color: SharpsellTheme.secondaryColor,
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              _SpacingUsageExample(
                title: 'Inline Spacing',
                description: 'Use inline spacing for horizontal gaps between elements',
                code: '''
Row(
  children: [
    Widget1(),
    SizedBox(width: SharpsellTheme.inlineDefault),
    Widget2(),
  ],
)
''',
                visual: Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      color: SharpsellTheme.primaryColor,
                    ),
                    const SizedBox(width: SharpsellTheme.inlineDefault),
                    Container(
                      width: 50,
                      height: 50,
                      color: SharpsellTheme.secondaryColor,
                    ),
                  ],
                ),
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              _SpacingUsageExample(
                title: 'Section Spacing',
                description: 'Use section spacing for major layout divisions',
                code: '''
Column(
  children: [
    Section1(),
    SizedBox(height: SharpsellTheme.sectionDefault),
    Section2(),
  ],
)
''',
                visual: Column(
                  children: [
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: SharpsellTheme.lightGrey,
                        borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
                      ),
                      child: const Center(child: Text('Section 1')),
                    ),
                    const SizedBox(height: SharpsellTheme.sectionDefault),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: SharpsellTheme.lightGrey,
                        borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
                      ),
                      child: const Center(child: Text('Section 2')),
                    ),
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

class _SpacingSection extends StatelessWidget {
  final String title;
  final String description;
  final List<_SpacingItem> spacings;

  const _SpacingSection({
    required this.title,
    required this.description,
    required this.spacings,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: SharpsellTheme.heading3),
        const SizedBox(height: SharpsellTheme.inlineTight),
        Text(
          description,
          style: SharpsellTheme.paragraph1.copyWith(
            color: SharpsellTheme.textSecondary,
          ),
        ),
        const SizedBox(height: SharpsellTheme.stackDefault),
        ...spacings.map((spacing) => Padding(
              padding: const EdgeInsets.only(bottom: SharpsellTheme.stackDefault),
              child: _SpacingCard(spacing),
            )),
      ],
    );
  }
}

class _SpacingCard extends StatelessWidget {
  final _SpacingItem spacing;

  const _SpacingCard(this.spacing);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.paddingMD),
      decoration: BoxDecoration(
        border: Border.all(color: SharpsellTheme.lightGrey2),
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
        color: SharpsellTheme.white,
      ),
      child: Row(
        children: [
          Container(
            width: spacing.value,
            height: 40,
            decoration: BoxDecoration(
              color: SharpsellTheme.primaryColor,
              borderRadius: BorderRadius.circular(SharpsellTheme.radiusXS),
            ),
          ),
          const SizedBox(width: SharpsellTheme.inlineDefault),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      spacing.name,
                      style: SharpsellTheme.paragraph2,
                    ),
                    const SizedBox(width: SharpsellTheme.inlineDefault),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: SharpsellTheme.paddingSM,
                        vertical: SharpsellTheme.paddingXS,
                      ),
                      decoration: BoxDecoration(
                        color: SharpsellTheme.primaryAlpha10,
                        borderRadius: BorderRadius.circular(SharpsellTheme.radiusXS),
                      ),
                      child: Text(
                        spacing.valueString,
                        style: SharpsellTheme.paragraph5.copyWith(
                          fontFamily: 'monospace',
                          color: SharpsellTheme.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: SharpsellTheme.inlineTight),
                Text(
                  spacing.description,
                  style: SharpsellTheme.paragraph3.copyWith(
                    color: SharpsellTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SpacingItem {
  final String name;
  final double value;
  final String valueString;
  final String description;

  _SpacingItem(this.name, this.value, this.valueString, this.description);
}

class _SpacingUsageExample extends StatelessWidget {
  final String title;
  final String description;
  final String code;
  final Widget visual;

  const _SpacingUsageExample({
    required this.title,
    required this.description,
    required this.code,
    required this.visual,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.paddingXL),
      decoration: BoxDecoration(
        color: SharpsellTheme.lightGrey,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: SharpsellTheme.heading3),
          const SizedBox(height: SharpsellTheme.inlineTight),
          Text(
            description,
            style: SharpsellTheme.paragraph1.copyWith(
              color: SharpsellTheme.textSecondary,
            ),
          ),
          const SizedBox(height: SharpsellTheme.stackDefault),
          Container(
            padding: const EdgeInsets.all(SharpsellTheme.paddingMD),
            decoration: BoxDecoration(
              color: SharpsellTheme.black,
              borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
            ),
            child: Text(
              code,
              style: SharpsellTheme.paragraph3.copyWith(
                fontFamily: 'monospace',
                color: SharpsellTheme.white,
              ),
            ),
          ),
          const SizedBox(height: SharpsellTheme.stackDefault),
          Container(
            padding: const EdgeInsets.all(SharpsellTheme.paddingMD),
            decoration: BoxDecoration(
              color: SharpsellTheme.white,
              borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
            ),
            child: visual,
          ),
        ],
      ),
    );
  }
}
