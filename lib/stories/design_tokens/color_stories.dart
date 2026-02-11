import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../../app/theme.dart';

/// Color guide stories
List<Story> get colorStories {
  return [
    Story(
      name: 'Design Tokens/Colors/Primitives',
      description: 'Primitive color tokens from the design system',
      builder: (context) => Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(SharpsellTheme.paddingXL),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Primitive Colors', style: SharpsellTheme.heading1),
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Neutrals
              _ColorSection(
                title: 'Neutrals',
                colors: [
                  _ColorItem('White', SharpsellTheme.white, '#FFFFFF'),
                  _ColorItem('Light Grey', SharpsellTheme.lightGrey, '#F4F4F4'),
                  _ColorItem('Light Grey 2', SharpsellTheme.lightGrey2, '#DCDCDC'),
                  _ColorItem('Grey 3', SharpsellTheme.grey3, '#A6A6A6'),
                  _ColorItem('Dark Grey', SharpsellTheme.darkGrey, '#656565'),
                  _ColorItem('Icon Grey', SharpsellTheme.iconGrey, '#363636'),
                  _ColorItem('Black', SharpsellTheme.black, '#1D1D1D'),
                  _ColorItem('Full Black', SharpsellTheme.fullBlack, '#000000'),
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Primary
              _ColorSection(
                title: 'Primary',
                colors: [
                  _ColorItem('Primary Light', SharpsellTheme.primaryLight, '#AF1E57'),
                  _ColorItem('Primary', SharpsellTheme.primaryColor, '#AF1E57'),
                  _ColorItem('Primary Dark', SharpsellTheme.primaryDark, '#8D1846'),
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Secondary
              _ColorSection(
                title: 'Secondary',
                colors: [
                  _ColorItem('Secondary Light', SharpsellTheme.secondaryLight, '#EBA403'),
                  _ColorItem('Secondary', SharpsellTheme.secondaryColor, '#EBA403'),
                  _ColorItem('Secondary Dark', SharpsellTheme.secondaryDark, '#D39301'),
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Accent
              _ColorSection(
                title: 'Accent',
                colors: [
                  _ColorItem('Accent Light', SharpsellTheme.accentLight, '#EB3003'),
                  _ColorItem('Accent', SharpsellTheme.accentColor, '#EB3003'),
                  _ColorItem('Accent Dark', SharpsellTheme.accentDark, '#C72C06'),
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Semantic Colors
              Text('Semantic Colors', style: SharpsellTheme.heading1),
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Success
              _ColorSection(
                title: 'Success',
                colors: [
                  _ColorItem('Success Light', SharpsellTheme.successLight, '#DEF5D8'),
                  _ColorItem('Success', SharpsellTheme.successColor, '#79D563'),
                  _ColorItem('Success Dark', SharpsellTheme.successDark, '#67B055'),
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Warning
              _ColorSection(
                title: 'Warning',
                colors: [
                  _ColorItem('Warning Light', SharpsellTheme.warningLight, '#FFF1B9'),
                  _ColorItem('Warning', SharpsellTheme.warningColor, '#FFD016'),
                  _ColorItem('Warning Dark', SharpsellTheme.warningDark, '#B54708'),
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Error
              _ColorSection(
                title: 'Error',
                colors: [
                  _ColorItem('Error Light', SharpsellTheme.errorLight, '#FFDDDD'),
                  _ColorItem('Error', SharpsellTheme.errorColor, '#FF1616'),
                  _ColorItem('Error Dark', SharpsellTheme.errorDark, '#CC0000'),
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Alpha Variants
              Text('Alpha Variants', style: SharpsellTheme.heading1),
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              _ColorSection(
                title: 'Primary Alpha',
                colors: [
                  _ColorItem('10%', SharpsellTheme.primaryAlpha10, '10% opacity'),
                  _ColorItem('20%', SharpsellTheme.primaryAlpha20, '20% opacity'),
                  _ColorItem('30%', SharpsellTheme.primaryAlpha30, '30% opacity'),
                  _ColorItem('50%', SharpsellTheme.primaryAlpha50, '50% opacity'),
                  _ColorItem('70%', SharpsellTheme.primaryAlpha70, '70% opacity'),
                  _ColorItem('90%', SharpsellTheme.primaryAlpha90, '90% opacity'),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
    Story(
      name: 'Design Tokens/Colors/Semantic',
      description: 'Semantic color usage guide',
      builder: (context) => Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(SharpsellTheme.paddingXL),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Semantic Color Usage', style: SharpsellTheme.heading1),
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              _SemanticColorGuide(
                title: 'Primary Colors',
                description: 'Use for primary actions, links, and brand elements',
                color: SharpsellTheme.primaryColor,
                examples: [
                  'Primary action buttons',
                  'Active navigation items',
                  'Links and interactive elements',
                  'Brand identity elements',
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              _SemanticColorGuide(
                title: 'Success Colors',
                description: 'Use for positive actions and success states',
                color: SharpsellTheme.successColor,
                examples: [
                  'Success messages',
                  'Completed states',
                  'Positive confirmations',
                  'Progress indicators',
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              _SemanticColorGuide(
                title: 'Warning Colors',
                description: 'Use for warnings and cautionary messages',
                color: SharpsellTheme.warningColor,
                examples: [
                  'Warning alerts',
                  'Cautionary messages',
                  'Pending states',
                  'Attention-required indicators',
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              _SemanticColorGuide(
                title: 'Error Colors',
                description: 'Use for errors and destructive actions',
                color: SharpsellTheme.errorColor,
                examples: [
                  'Error messages',
                  'Validation errors',
                  'Destructive actions',
                  'Critical alerts',
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  ];
}

class _ColorSection extends StatelessWidget {
  final String title;
  final List<_ColorItem> colors;

  const _ColorSection({
    required this.title,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: SharpsellTheme.heading3),
        const SizedBox(height: SharpsellTheme.stackDefault),
        Wrap(
          spacing: SharpsellTheme.inlineDefault,
          runSpacing: SharpsellTheme.stackDefault,
          children: colors.map((color) => _ColorCard(color)).toList(),
        ),
      ],
    );
  }
}

class _ColorCard extends StatelessWidget {
  final _ColorItem colorItem;

  const _ColorCard(this.colorItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(color: SharpsellTheme.lightGrey2),
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
        color: SharpsellTheme.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: colorItem.color,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(SharpsellTheme.radiusMD),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(SharpsellTheme.paddingMD),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  colorItem.name,
                  style: SharpsellTheme.paragraph2,
                ),
                const SizedBox(height: SharpsellTheme.inlineTight),
                Text(
                  colorItem.value,
                  style: SharpsellTheme.paragraph3.copyWith(
                    color: SharpsellTheme.textSecondary,
                    fontFamily: 'monospace',
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

class _ColorItem {
  final String name;
  final Color color;
  final String value;

  _ColorItem(this.name, this.color, this.value);
}

class _SemanticColorGuide extends StatelessWidget {
  final String title;
  final String description;
  final Color color;
  final List<String> examples;

  const _SemanticColorGuide({
    required this.title,
    required this.description,
    required this.color,
    required this.examples,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.paddingXL),
      decoration: BoxDecoration(
        color: SharpsellTheme.lightGrey,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
        border: Border.all(color: color, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
                ),
              ),
              const SizedBox(width: SharpsellTheme.inlineDefault),
              Expanded(
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
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: SharpsellTheme.stackDefault),
          Text('Use Cases:', style: SharpsellTheme.paragraph2),
          const SizedBox(height: SharpsellTheme.stackDefault),
          ...examples.map((example) => Padding(
                padding: const EdgeInsets.only(bottom: SharpsellTheme.inlineDefault),
                child: Row(
                  children: [
                    Icon(Icons.check, color: color, size: 16),
                    const SizedBox(width: SharpsellTheme.inlineDefault),
                    Expanded(
                      child: Text(example, style: SharpsellTheme.paragraph1),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
