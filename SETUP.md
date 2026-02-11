# Setup Guide

## Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK (>=3.0.0)
- Figma account (for design access)
- Zeplin account (optional, for integration)

## Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd sharpsell-design-storybook
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Set up environment variables (optional, for Figma/Zeplin integration):
   ```bash
   export FIGMA_TOKEN=your_figma_token
   export ZEPLIN_TOKEN=your_zeplin_token
   export ZEPLIN_PROJECT_ID=your_project_id
   ```

## Running the Storybook

### Web
```bash
flutter run -d chrome
```

### Mobile
```bash
flutter run
```

### Desktop
```bash
flutter run -d macos  # or windows, linux
```

## Figma Integration Setup

1. Get your Figma Personal Access Token:
   - Go to Figma Settings > Account > Personal Access Tokens
   - Generate a new token

2. Set the token:
   ```bash
   export FIGMA_TOKEN=your_token
   ```

3. The file key is already configured in `lib/config/config.dart`

## Zeplin Integration Setup

1. Get your Zeplin API token:
   - Go to Zeplin Settings > API
   - Generate a new token

2. Get your project ID from Zeplin

3. Set environment variables:
   ```bash
   export ZEPLIN_TOKEN=your_token
   export ZEPLIN_PROJECT_ID=your_project_id
   ```

## Processing Components from Figma

To extract and generate components from Figma:

1. Ensure Figma token is set

2. Run the batch processor:
   ```dart
   dart scripts/process_all_components.dart
   ```

3. Review generated components in `lib/components/`

4. Refine components as needed

## Project Structure

```
lib/
├── main.dart              # Entry point
├── app/                   # App configuration
│   ├── app.dart
│   └── theme.dart         # Material 2 theme
├── components/            # Component implementations
│   ├── buttons/
│   ├── cards/
│   ├── inputs/
│   └── ...
├── stories/               # Storybook stories
│   ├── all_stories.dart
│   ├── button_stories.dart
│   └── ...
├── services/              # Services
│   ├── figma_service.dart
│   ├── zeplin_service.dart
│   ├── component_generator.dart
│   └── batch_processor.dart
├── utils/                 # Utilities
│   └── design_tokens.dart
└── config/                # Configuration
    └── config.dart
```

## Troubleshooting

### Figma API Errors
- Verify your token is valid
- Check file permissions in Figma
- Ensure node IDs are correct

### Component Generation Issues
- Check component naming conventions
- Verify design token usage
- Review generated code for errors

### Storybook Not Loading
- Run `flutter pub get`
- Check for import errors
- Verify all stories are registered in `all_stories.dart`
