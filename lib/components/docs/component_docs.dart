import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Component documentation model
class ComponentDocs {
  final String name;
  final String description;
  final String category;
  final List<String> props;
  final List<String> examples;
  final List<String> dos;
  final List<String> donts;
  final String? usage;
  final Map<String, String>? propDetails;

  const ComponentDocs({
    required this.name,
    required this.description,
    required this.category,
    required this.props,
    required this.examples,
    required this.dos,
    required this.donts,
    this.usage,
    this.propDetails,
  });
}

/// Documentation widget for components
class ComponentDocumentation extends StatelessWidget {
  final ComponentDocs docs;

  const ComponentDocumentation({
    super.key,
    required this.docs,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(SharpsellTheme.paddingXL),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Text(
            docs.name,
            style: SharpsellTheme.heading1,
          ),
          const SizedBox(height: SharpsellTheme.stackDefault),
          Text(
            docs.description,
            style: SharpsellTheme.paragraph1.copyWith(
              color: SharpsellTheme.textSecondary,
            ),
          ),
          const SizedBox(height: SharpsellTheme.sectionDefault),

          // Usage
          if (docs.usage != null) ...[
            _SectionTitle('Usage'),
            const SizedBox(height: SharpsellTheme.stackDefault),
            Container(
              padding: const EdgeInsets.all(SharpsellTheme.paddingMD),
              decoration: BoxDecoration(
                color: SharpsellTheme.lightGrey,
                borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
              ),
              child: Text(
                docs.usage!,
                style: SharpsellTheme.paragraph3.copyWith(
                  fontFamily: 'monospace',
                ),
              ),
            ),
            const SizedBox(height: SharpsellTheme.sectionDefault),
          ],

          // Props
          _SectionTitle('Props'),
          const SizedBox(height: SharpsellTheme.stackDefault),
          ...docs.props.map((prop) => Padding(
                padding: const EdgeInsets.only(bottom: SharpsellTheme.stackDefault),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        prop.split(':').first,
                        style: SharpsellTheme.paragraph3.copyWith(
                          fontWeight: SharpsellTheme.fontWeightBold,
                          color: SharpsellTheme.primaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(width: SharpsellTheme.inlineDefault),
                    Expanded(
                      child: Text(
                        prop.contains(':') ? prop.split(':').skip(1).join(':').trim() : prop,
                        style: SharpsellTheme.paragraph1,
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: SharpsellTheme.sectionDefault),

          // Examples
          _SectionTitle('Examples'),
          const SizedBox(height: SharpsellTheme.stackDefault),
          ...docs.examples.map((example) => Padding(
                padding: const EdgeInsets.only(bottom: SharpsellTheme.stackDefault),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.check_circle, color: SharpsellTheme.successColor, size: 20),
                    const SizedBox(width: SharpsellTheme.inlineDefault),
                    Expanded(
                      child: Text(
                        example,
                        style: SharpsellTheme.paragraph1,
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: SharpsellTheme.sectionDefault),

          // Do's
          _SectionTitle('Do\'s', color: SharpsellTheme.successColor),
          const SizedBox(height: SharpsellTheme.stackDefault),
          ...docs.dos.map((doItem) => Padding(
                padding: const EdgeInsets.only(bottom: SharpsellTheme.stackDefault),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: SharpsellTheme.successLight,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.check,
                        color: SharpsellTheme.successColor,
                        size: 16,
                      ),
                    ),
                    const SizedBox(width: SharpsellTheme.inlineDefault),
                    Expanded(
                      child: Text(
                        doItem,
                        style: SharpsellTheme.paragraph1,
                      ),
                    ),
                  ],
                ),
              )),
          const SizedBox(height: SharpsellTheme.sectionDefault),

          // Don'ts
          _SectionTitle('Don\'ts', color: SharpsellTheme.errorColor),
          const SizedBox(height: SharpsellTheme.stackDefault),
          ...docs.donts.map((dont) => Padding(
                padding: const EdgeInsets.only(bottom: SharpsellTheme.stackDefault),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: SharpsellTheme.errorLight,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.close,
                        color: SharpsellTheme.errorColor,
                        size: 16,
                      ),
                    ),
                    const SizedBox(width: SharpsellTheme.inlineDefault),
                    Expanded(
                      child: Text(
                        dont,
                        style: SharpsellTheme.paragraph1,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;
  final Color? color;

  const _SectionTitle(this.title, {this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: SharpsellTheme.heading3.copyWith(
        color: color ?? SharpsellTheme.textPrimary,
      ),
    );
  }
}
