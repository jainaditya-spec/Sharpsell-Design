# Contributing to Sharpsell Design Storybook

## Adding New Components

### 1. Extract Design from Figma

1. Open the Figma design file
2. Identify the component node ID
3. Use the Figma API or manual extraction to get design specifications

### 2. Create Component File

Create a new file in `lib/components/{category}/{component_name}.dart`:

```dart
import 'package:flutter/material.dart';
import '../../app/theme.dart';

class ComponentName extends StatelessWidget {
  // Properties
  final String? property;
  
  const ComponentName({
    super.key,
    this.property,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Implementation
    );
  }
}
```

### 3. Create Story File

Add a story in `lib/stories/{category}_stories.dart`:

```dart
Story(
  name: 'Category/ComponentName',
  description: 'Component description',
  builder: (context, k) => Padding(
    padding: const EdgeInsets.all(16.0),
    child: ComponentName(
      property: k.text(label: 'Property', initial: 'Default'),
    ),
  ),
),
```

### 4. Register Story

Add the story collection to `lib/stories/all_stories.dart`:

```dart
import '{category}_stories.dart';

List<Story> get allStories {
  return [
    ...buttonStories,
    ...{category}Stories, // Add here
  ];
}
```

## Component Guidelines

- Use Material 2 components as base
- Follow Sharpsell design tokens from `lib/app/theme.dart`
- Make components reusable and configurable
- Add proper documentation
- Include all variants and states

## Design Token Usage

Always use design tokens from `SharpsellTheme`:

```dart
// Colors
SharpsellTheme.primaryColor

// Spacing
SharpsellTheme.spacingM

// Border Radius
SharpsellTheme.radiusM

// Elevation
SharpsellTheme.elevationLow
```

## Testing

Run the Storybook to test your component:

```bash
flutter run
```

## Batch Processing

To process multiple components from Figma:

1. Set up Figma API token:
   ```bash
   export FIGMA_TOKEN=your_token_here
   ```

2. Run batch processor:
   ```dart
   dart scripts/process_all_components.dart
   ```

3. Review generated components and refine as needed
