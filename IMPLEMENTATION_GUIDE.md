# Implementation Guide for 348 Components

## Overview

This guide explains how to implement all 348 components from Figma with proper design, documentation, and props.

## Current Status

✅ **Infrastructure Complete:**
- Flutter Storybook setup
- Component generation system
- Story generation system
- All 348 component stubs created

🔄 **Next Steps:**
- Extract actual designs from Figma
- Implement components with proper Material 2 styling
- Add comprehensive props and documentation
- Create interactive Storybook stories

## Component Structure

Each component follows this structure:

```dart
import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// ComponentName
/// 
/// **Category:** [category]
/// **Figma Node:** [node-id]
/// 
/// [Description]
/// 
/// **Props:**
/// - `propName` (Type): Description
/// 
/// **Usage Example:**
/// ```dart
/// ComponentName(
///   prop: value,
/// )
/// ```
class ComponentName extends StatelessWidget {
  // Props with documentation
  
  const ComponentName({
    super.key,
    // Props
  });

  @override
  Widget build(BuildContext context) {
    // Implementation
  }
}
```

## Implementation Process

### Step 1: Extract Design from Figma

For each component:

1. **Get Figma Node ID** from the URL:
   ```
   https://www.figma.com/design/1YWrmI6qh5GQjItVARm2T5/Untitled?node-id=1-13865
   Node ID: 1:13865
   ```

2. **Use Figma API** to extract design:
   ```bash
   export FIGMA_TOKEN=your_token
   curl -H "X-Figma-Token: $FIGMA_TOKEN" \
     "https://api.figma.com/v1/files/1YWrmI6qh5GQjItVARm2T5/nodes?ids=1:13865"
   ```

3. **Extract Design Tokens:**
   - Colors
   - Typography
   - Spacing
   - Border radius
   - Elevation
   - Component properties/variants

### Step 2: Implement Component

1. **Update Component File:**
   - Replace placeholder implementation
   - Use extracted design tokens
   - Follow Material 2 design principles
   - Use SharpsellTheme for consistency

2. **Add Props:**
   - Extract all component properties from Figma
   - Add proper types and documentation
   - Include default values where appropriate

3. **Implement Variants:**
   - Handle all component states (enabled, disabled, hover, etc.)
   - Support all size variants
   - Implement all style variants

### Step 3: Create Story

1. **Update Story File:**
   - Add component to appropriate category story file
   - Create knobs for all props
   - Add multiple variants/examples

2. **Example Story:**
   ```dart
   Story(
     name: 'Category/ComponentName',
     description: 'Component description',
     builder: (context) => Scaffold(
       body: Padding(
         padding: const EdgeInsets.all(16.0),
         child: ComponentName(
           prop1: context.knobs.text(label: 'Prop1', initial: 'Default'),
           prop2: context.knobs.boolean(label: 'Prop2', initial: true),
         ),
       ),
     ),
   ),
   ```

### Step 4: Documentation

1. **Component Documentation:**
   - Clear description
   - All props documented
   - Usage examples
   - Design tokens used

2. **Story Documentation:**
   - Component purpose
   - Use cases
   - Variants available

## Batch Processing

To process multiple components:

1. **Set up Figma API:**
   ```bash
   export FIGMA_TOKEN=your_figma_token
   ```

2. **Run batch processor:**
   ```dart
   dart scripts/generate_all_348_components.dart
   ```

3. **Review generated components:**
   - Check `lib/components/` for generated files
   - Review `lib/stories/` for story files

4. **Implement designs:**
   - For each component, extract Figma design
   - Update implementation
   - Add proper props
   - Test in Storybook

## Component Categories

Components are organized into categories:

- **buttons** - Button components
- **cards** - Card components  
- **inputs** - Input fields
- **dialogs** - Dialogs and modals
- **navigation** - Navigation components
- **chips** - Chip/tag components
- **lists** - List components
- **icons** - Icon components
- **avatars** - Avatar components
- **badges** - Badge components
- **progress** - Progress indicators
- **switches** - Switch/toggle components
- **sliders** - Slider components
- **tabs** - Tab components
- **menus** - Menu components
- **tooltips** - Tooltip components
- **snackbars** - Snackbar components
- **misc** - Other components

## Design Token Usage

Always use design tokens from `SharpsellTheme`:

```dart
// Colors
SharpsellTheme.primaryColor
SharpsellTheme.textPrimary

// Spacing
SharpsellTheme.spacingM
SharpsellTheme.spacingL

// Border Radius
SharpsellTheme.radiusM

// Elevation
SharpsellTheme.elevationLow
```

## Quality Checklist

For each component:

- [ ] Design matches Figma exactly
- [ ] All props properly typed and documented
- [ ] Uses Material 2 components
- [ ] Uses SharpsellTheme design tokens
- [ ] All variants implemented
- [ ] All states handled
- [ ] Story with interactive knobs
- [ ] Proper error handling
- [ ] Responsive design
- [ ] Accessibility considerations

## Testing

1. **Run Storybook:**
   ```bash
   flutter run -d chrome
   ```

2. **Test each component:**
   - Verify all variants work
   - Test all props with knobs
   - Check responsive behavior
   - Verify Material 2 compliance

## Progress Tracking

Track implementation progress:

- Components implemented: X/348
- Stories created: X/348
- Categories complete: X/18

## Resources

- [Figma API Documentation](https://www.figma.com/developers/api)
- [Material Design 2](https://material.io/design)
- [Flutter Documentation](https://flutter.dev/docs)
- [Storybook Flutter](https://pub.dev/packages/storybook_flutter)
