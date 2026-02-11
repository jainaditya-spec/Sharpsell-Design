# Processing 348 Components from Figma

This guide explains how to process all 348 components from the Figma design file.

## Overview

The project includes infrastructure to:
1. Extract designs from Figma
2. Generate Flutter component code
3. Create Storybook stories
4. Batch process all components

## Step-by-Step Process

### 1. Set Up Figma Access

1. Get your Figma Personal Access Token:
   - Go to Figma Settings > Account > Personal Access Tokens
   - Click "Create new token"
   - Copy the token

2. Set environment variable:
   ```bash
   export FIGMA_TOKEN=your_token_here
   ```

### 2. Review Node IDs

All 348 node IDs have been extracted and are listed in:
- `scripts/process_all_components.dart`

The file key is already configured: `1YWrmI6qh5GQjItVARm2T5`

### 3. Process Components

#### Option A: Manual Processing (Recommended for Initial Setup)

1. Start with a few components to establish patterns:
   ```dart
   // Use Figma API to get design data
   // Generate components manually based on designs
   ```

2. Review each component design in Figma
3. Create component implementation
4. Add story with knobs

#### Option B: Automated Batch Processing

1. Ensure Figma token is set
2. Run the batch processor:
   ```dart
   dart scripts/process_all_components.dart
   ```

3. Review generated components:
   - Check `lib/components/` for generated files
   - Review `batch_processing_results.json` for status

4. Refine components:
   - Generated components are templates
   - Implement actual design specifications
   - Add proper styling and behavior

### 4. Component Categories

Components will be automatically categorized:

- **Buttons**: Button variants, icon buttons, etc.
- **Cards**: Basic cards, elevated cards, etc.
- **Inputs**: Text fields, dropdowns, checkboxes, etc.
- **Dialogs**: Modals, alerts, confirmations
- **Navigation**: App bars, bottom nav, tabs
- **Chips**: Tags, filters, selections
- **Lists**: List items, tiles
- **Icons**: Icon components
- **Avatars**: User avatars
- **Badges**: Notifications, counts
- **Progress**: Loaders, progress bars
- **Switches**: Toggles, switches
- **Sliders**: Range sliders
- **Tabs**: Tab bars
- **Menus**: Dropdowns, context menus
- **Tooltips**: Hover tooltips
- **Snackbars**: Toast notifications
- **Misc**: Other components

### 5. Quality Checklist

For each component:

- [ ] Matches Figma design exactly
- [ ] Uses Material 2 components
- [ ] Follows Sharpsell design tokens
- [ ] Has all variants (sizes, states, etc.)
- [ ] Includes Storybook story with knobs
- [ ] Properly documented
- [ ] Responsive and accessible

### 6. Testing

1. Run Storybook:
   ```bash
   flutter run
   ```

2. Test each component:
   - Verify all variants work
   - Check knobs functionality
   - Test different states
   - Verify responsive behavior

### 7. Zeplin Integration

Once components are implemented:

1. Set Zeplin credentials:
   ```bash
   export ZEPLIN_TOKEN=your_token
   export ZEPLIN_PROJECT_ID=your_project_id
   ```

2. Export component documentation:
   ```dart
   // Use ZeplinService to sync components
   ```

## Component Implementation Template

```dart
import 'package:flutter/material.dart';
import '../../app/theme.dart';

class ComponentName extends StatelessWidget {
  // Properties from Figma design
  final String? property;
  
  const ComponentName({
    super.key,
    this.property,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // Implementation based on Figma specs
      // Use SharpsellTheme for design tokens
    );
  }
}
```

## Story Template

```dart
Story(
  name: 'Category/ComponentName',
  description: 'Description from Figma',
  builder: (context, k) => Padding(
    padding: const EdgeInsets.all(16.0),
    child: ComponentName(
      property: k.text(label: 'Property', initial: 'Default'),
      // Add knobs for all properties
    ),
  ),
),
```

## Tips

1. **Start Small**: Process 10-20 components first to establish patterns
2. **Group Similar**: Process similar components together
3. **Review Designs**: Always check Figma for exact specifications
4. **Use Design Tokens**: Always use SharpsellTheme, don't hardcode values
5. **Test Thoroughly**: Test all variants and states
6. **Document**: Add comments explaining design decisions

## Troubleshooting

### Figma API Errors
- Verify token is valid and has file access
- Check rate limits (100 requests/minute)
- Verify node IDs are correct

### Component Generation Issues
- Review generated code templates
- Check category inference logic
- Verify file paths and naming

### Design Mismatches
- Compare with Figma design
- Check design tokens
- Verify Material 2 component usage

## Progress Tracking

Track your progress:
- Components implemented: X/348
- Stories created: X/348
- Categories completed: X/20

Update this as you progress!
