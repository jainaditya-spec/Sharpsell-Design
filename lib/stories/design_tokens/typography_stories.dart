import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../../app/theme.dart';

/// Typography guide stories
List<Story> get typographyStories {
  return [
    Story(
      name: 'Design Tokens/Typography/Primitives',
      description: 'Primitive typography tokens from the design system',
      builder: (context) => Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(SharpsellTheme.paddingXL),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Typography Primitives', style: SharpsellTheme.heading1),
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Font Families
              _TypographySection(
                title: 'Font Families',
                items: [
                  _TypographyItem(
                    'Heading Font',
                    SharpsellTheme.fontFamilyHeading,
                    'Zilla Slab',
                    'Used for all headings (H1-H5)',
                  ),
                  _TypographyItem(
                    'Paragraph Font',
                    SharpsellTheme.fontFamilyParagraph,
                    'Nunito',
                    'Used for all body text and paragraphs',
                  ),
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Font Weights
              _TypographySection(
                title: 'Font Weights',
                items: [
                  _TypographyItem(
                    'Regular',
                    '${SharpsellTheme.fontWeightRegular.value}',
                    '400',
                    'Default weight for most text',
                  ),
                  _TypographyItem(
                    'Bold',
                    '${SharpsellTheme.fontWeightBold.value}',
                    '700',
                    'Used for emphasis and headings',
                  ),
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Headings
              Text('Headings', style: SharpsellTheme.heading2),
              const SizedBox(height: SharpsellTheme.stackDefault),
              
              _TypographyExample(
                name: 'Heading 1',
                style: SharpsellTheme.heading1,
                description: 'Largest heading, used for page titles',
                example: 'Heading 1 Example',
              ),
              
              _TypographyExample(
                name: 'Heading 2',
                style: SharpsellTheme.heading2,
                description: 'Section headings',
                example: 'Heading 2 Example',
              ),
              
              _TypographyExample(
                name: 'Heading 3',
                style: SharpsellTheme.heading3,
                description: 'Subsection headings',
                example: 'Heading 3 Example',
              ),
              
              _TypographyExample(
                name: 'Heading 4',
                style: SharpsellTheme.heading4,
                description: 'Small section headings',
                example: 'Heading 4 Example',
              ),
              
              _TypographyExample(
                name: 'Heading 5',
                style: SharpsellTheme.heading5,
                description: 'Smallest heading',
                example: 'Heading 5 Example',
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              // Paragraphs
              Text('Paragraphs', style: SharpsellTheme.heading2),
              const SizedBox(height: SharpsellTheme.stackDefault),
              
              _TypographyExample(
                name: 'Paragraph 1',
                style: SharpsellTheme.paragraph1,
                description: 'Large body text',
                example: 'Paragraph 1 Example - Regular weight',
              ),
              
              _TypographyExample(
                name: 'Paragraph 2',
                style: SharpsellTheme.paragraph2,
                description: 'Large body text - Bold',
                example: 'Paragraph 2 Example - Bold weight',
              ),
              
              _TypographyExample(
                name: 'Paragraph 3',
                style: SharpsellTheme.paragraph3,
                description: 'Medium body text',
                example: 'Paragraph 3 Example - Regular weight',
              ),
              
              _TypographyExample(
                name: 'Paragraph 4',
                style: SharpsellTheme.paragraph4,
                description: 'Medium body text - Bold',
                example: 'Paragraph 4 Example - Bold weight',
              ),
              
              _TypographyExample(
                name: 'Paragraph 5',
                style: SharpsellTheme.paragraph5,
                description: 'Small body text',
                example: 'Paragraph 5 Example - Regular weight',
              ),
              
              _TypographyExample(
                name: 'Paragraph 6',
                style: SharpsellTheme.paragraph6,
                description: 'Small body text - Bold',
                example: 'Paragraph 6 Example - Bold weight',
              ),
            ],
          ),
        ),
      ),
    ),
    Story(
      name: 'Design Tokens/Typography/Semantic',
      description: 'Semantic typography usage guide',
      builder: (context) => Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(SharpsellTheme.paddingXL),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Semantic Typography Usage', style: SharpsellTheme.heading1),
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              _SemanticTypographyGuide(
                title: 'Headings',
                description: 'Use Zilla Slab for all headings',
                style: SharpsellTheme.heading1,
                examples: [
                  'Page titles and hero sections',
                  'Section headers',
                  'Card titles',
                  'Modal titles',
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              _SemanticTypographyGuide(
                title: 'Body Text',
                description: 'Use Nunito for all body text',
                style: SharpsellTheme.paragraph1,
                examples: [
                  'Paragraphs and descriptions',
                  'Form labels and helper text',
                  'List items',
                  'Button labels',
                ],
              ),
              
              const SizedBox(height: SharpsellTheme.sectionDefault),
              
              _SemanticTypographyGuide(
                title: 'Emphasis',
                description: 'Use bold weights for emphasis',
                style: SharpsellTheme.paragraph2,
                examples: [
                  'Important information',
                  'Call-to-action text',
                  'Highlighted content',
                  'Error messages',
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  ];
}

class _TypographySection extends StatelessWidget {
  final String title;
  final List<_TypographyItem> items;

  const _TypographySection({
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: SharpsellTheme.heading3),
        const SizedBox(height: SharpsellTheme.stackDefault),
        ...items.map((item) => Padding(
              padding: const EdgeInsets.only(bottom: SharpsellTheme.stackDefault),
              child: Container(
                padding: const EdgeInsets.all(SharpsellTheme.paddingMD),
                decoration: BoxDecoration(
                  color: SharpsellTheme.lightGrey,
                  borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          item.name,
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
                            item.value,
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
                      item.description,
                      style: SharpsellTheme.paragraph3.copyWith(
                        color: SharpsellTheme.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}

class _TypographyItem {
  final String name;
  final String value;
  final String displayValue;
  final String description;

  _TypographyItem(this.name, this.value, this.displayValue, this.description);
}

class _TypographyExample extends StatelessWidget {
  final String name;
  final TextStyle style;
  final String description;
  final String example;

  const _TypographyExample({
    required this.name,
    required this.style,
    required this.description,
    required this.example,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: SharpsellTheme.stackDefault),
      padding: const EdgeInsets.all(SharpsellTheme.paddingMD),
      decoration: BoxDecoration(
        border: Border.all(color: SharpsellTheme.lightGrey2),
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
        color: SharpsellTheme.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(name, style: SharpsellTheme.paragraph2),
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
                  '${style.fontSize}px / ${style.fontWeight == FontWeight.w700 ? "Bold" : "Regular"}',
                  style: SharpsellTheme.paragraph5.copyWith(
                    fontFamily: 'monospace',
                    color: SharpsellTheme.primaryColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: SharpsellTheme.inlineDefault),
          Text(example, style: style),
          const SizedBox(height: SharpsellTheme.inlineDefault),
          Text(
            description,
            style: SharpsellTheme.paragraph3.copyWith(
              color: SharpsellTheme.textSecondary,
            ),
          ),
        ],
      ),
    );
  }
}

class _SemanticTypographyGuide extends StatelessWidget {
  final String title;
  final String description;
  final TextStyle style;
  final List<String> examples;

  const _SemanticTypographyGuide({
    required this.title,
    required this.description,
    required this.style,
    required this.examples,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.paddingXL),
      decoration: BoxDecoration(
        color: SharpsellTheme.lightGrey,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
        border: Border.all(color: SharpsellTheme.primaryColor, width: 2),
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
              color: SharpsellTheme.white,
              borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
            ),
            child: Text('Example Text', style: style),
          ),
          const SizedBox(height: SharpsellTheme.stackDefault),
          Text('Use Cases:', style: SharpsellTheme.paragraph2),
          const SizedBox(height: SharpsellTheme.stackDefault),
          ...examples.map((example) => Padding(
                padding: const EdgeInsets.only(bottom: SharpsellTheme.inlineDefault),
                child: Row(
                  children: [
                    const Icon(Icons.check, color: SharpsellTheme.successColor, size: 16),
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
