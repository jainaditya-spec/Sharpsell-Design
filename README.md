# Sharpsell Design Storybook

A comprehensive design system component library for Sharpsell, built with Flutter and Material 2. This Storybook-like application showcases 348+ components extracted from Figma designs, enabling seamless collaboration between design and development teams.

## Features

- 📚 **Component Library**: 348+ Flutter components based on Material 2
- 🎨 **Design System**: Consistent design tokens and theming
- 🔗 **Figma Integration**: Direct sync from Figma designs
- 📱 **Storybook UI**: Interactive component showcase
- 🎯 **Zeplin Ready**: Prepared for Zeplin integration

## Project Structure

```
lib/
├── main.dart                 # Entry point
├── app/                      # App configuration
│   ├── app.dart
│   └── theme.dart           # Material 2 theme configuration
├── components/              # Component implementations
│   ├── buttons/
│   ├── cards/
│   ├── inputs/
│   ├── navigation/
│   └── ...
├── stories/                 # Storybook stories
│   ├── button_stories.dart
│   ├── card_stories.dart
│   └── ...
├── services/                # Services
│   ├── figma_service.dart
│   └── zeplin_service.dart
└── utils/                   # Utilities
    └── design_tokens.dart
```

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK (>=3.0.0)

### Installation

```bash
flutter pub get
flutter run
```

### Running Storybook

```bash
flutter run -d chrome  # For web
flutter run              # For mobile
```

## Component Development

Components are organized by category and follow Material 2 design principles. Each component includes:

- Multiple variants
- Interactive controls (knobs)
- Documentation
- Design tokens mapping

## Figma Integration

Components are automatically synced from Figma designs. The system extracts:
- Design tokens (colors, typography, spacing)
- Component structure
- Variants and states

## Zeplin Integration

The library is structured to support Zeplin export and documentation.

## Contributing

When adding new components:
1. Extract design from Figma
2. Create component in `lib/components/`
3. Add story in `lib/stories/`
4. Update design tokens if needed

## License

Proprietary - Sharpsell Technologies
