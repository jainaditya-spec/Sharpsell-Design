# Quick Start Guide

Get up and running with Sharpsell Design Storybook in 5 minutes!

## 1. Install Dependencies

```bash
flutter pub get
```

## 2. Run Storybook

```bash
flutter run
```

Or for web:
```bash
flutter run -d chrome
```

## 3. View Components

The Storybook will open showing:
- **Buttons** - Primary, Secondary, Outlined, Text
- **Cards** - Basic card component
- **Inputs** - Text fields
- **Chips** - Basic chip component

## 4. Explore Stories

- Navigate through component categories
- Use knobs to modify properties
- Switch between light/dark themes
- Preview on different device frames

## 5. Add Your First Component

### Step 1: Create Component

Create `lib/components/buttons/icon_button.dart`:

```dart
import 'package:flutter/material.dart';
import '../../app/theme.dart';

class IconButtonComponent extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  final double size;

  const IconButtonComponent({
    super.key,
    required this.icon,
    this.onPressed,
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      iconSize: size,
      onPressed: onPressed,
      color: SharpsellTheme.primaryColor,
    );
  }
}
```

### Step 2: Add Story

Add to `lib/stories/button_stories.dart`:

```dart
Story(
  name: 'Buttons/Icon',
  description: 'Icon button component',
  builder: (context, k) => Padding(
    padding: const EdgeInsets.all(16.0),
    child: IconButtonComponent(
      icon: Icons.favorite,
      onPressed: () {},
      size: k.slider(
        label: 'Size',
        initial: 24.0,
        min: 16.0,
        max: 48.0,
      ),
    ),
  ),
),
```

### Step 3: Test

Run `flutter run` and see your new component!

## 6. Process Components from Figma (Optional)

If you have Figma access:

```bash
export FIGMA_TOKEN=your_token
dart scripts/process_all_components.dart
```

## Next Steps

- Read [SETUP.md](SETUP.md) for detailed setup
- Check [CONTRIBUTING.md](CONTRIBUTING.md) for development guidelines
- See [PROCESSING_GUIDE.md](PROCESSING_GUIDE.md) for processing 348 components

## Troubleshooting

**Flutter not found?**
- Install Flutter: https://flutter.dev/docs/get-started/install

**Dependencies error?**
- Run `flutter pub get` again
- Check Flutter version: `flutter --version` (needs >=3.0.0)

**Storybook not loading?**
- Check console for errors
- Verify all stories are registered in `all_stories.dart`

**Components not showing?**
- Ensure component is imported in story file
- Check story is added to `all_stories.dart`

## Need Help?

- Review [PROJECT_SUMMARY.md](PROJECT_SUMMARY.md) for overview
- Check [SETUP.md](SETUP.md) for detailed instructions
- See [PROCESSING_GUIDE.md](PROCESSING_GUIDE.md) for component processing
