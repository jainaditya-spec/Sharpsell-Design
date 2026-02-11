import 'package:storybook_flutter/storybook_flutter.dart';
import 'button_stories.dart';
import 'card_stories.dart';
import 'input_stories.dart';
import 'chip_stories.dart';
import 'badge_stories.dart';
import 'alert_stories.dart';
import 'dialog_stories.dart';
import 'list_stories.dart';
import 'navigation_stories.dart';
import 'progress_stories.dart';
import 'misc_stories.dart';
import 'brand_stories.dart';
import 'design_tokens/color_stories.dart';
import 'design_tokens/typography_stories.dart';
import 'design_tokens/spacing_stories.dart';

/// All stories for the Sharpsell Design Storybook
List<Story> get allStories {
  return [
    // Design Tokens (shown first for reference)
    ...colorStories,
    ...typographyStories,
    ...spacingStories,
    
    // Brand
    ...brandStories,
    
    // Components
    ...buttonStories,
    ...cardStories,
    ...inputStories,
    ...chipStories,
    ...badgeStories,
    ...alertStories,
    ...dialogStories,
    ...listStories,
    ...navigationStories,
    ...progressStories,
    ...miscStories,
  ];
}
