# Sharpsell Design Storybook - Documentation Guide

## Overview

This is a comprehensive design system documentation tool built with Flutter, similar to Storybook.js. It provides interactive component documentation, design tokens, and usage guidelines.

## Features

### 🎨 Design Tokens

#### Colors
- **Primitives**: Base color palette (neutrals, primary, secondary, accent)
- **Semantic**: Contextual colors (success, warning, error, info)
- **Alpha Variants**: Transparent color variants for overlays and backgrounds
- **Usage Guides**: When and how to use each color

#### Typography
- **Font Families**: Zilla Slab (headings) and Nunito (paragraphs)
- **Font Weights**: Regular (400) and Bold (700)
- **Heading Styles**: H1-H5 with specific sizes and weights
- **Paragraph Styles**: P1-P6 with regular and bold variants
- **Semantic Usage**: Guidelines for when to use each typography style

#### Spacing
- **Component Padding**: XS (4px), SM (8px), MD (12px), LG (16px), XL (24px)
- **Stack Spacing**: Vertical spacing between elements (Tight, Default, Loose, Relaxed)
- **Inline Spacing**: Horizontal spacing between elements (Tight, Default, Loose, Relaxed)
- **Section Spacing**: Major layout divisions (Default, Large, XL)
- **Usage Examples**: Code examples and visual demonstrations

### 📦 Components

Each component includes:
- **Props Documentation**: All available properties with types and descriptions
- **Usage Examples**: Code snippets showing how to use the component
- **Do's and Don'ts**: Best practices and common mistakes
- **Interactive Props Editor**: Live editing of component properties
- **Multiple Variants**: Different sizes, states, and styles

#### Available Components

1. **Buttons**
   - Primary Button
   - Secondary Button
   - Outlined Button
   - Text Button

2. **Inputs**
   - Text Field
   - Checkbox
   - Radio Button
   - Switch

3. **Badges & Avatars**
   - Badge (with variants)
   - Avatar (with initials, icons, images)

4. **Alerts**
   - Success, Warning, Error, Info variants

5. **Dialogs**
   - Modal dialogs with actions

6. **Lists**
   - List items with avatars and badges

7. **Navigation**
   - Tabs
   - App Bar

8. **Progress Indicators**
   - Linear Progress
   - Circular Progress

9. **Miscellaneous**
   - Dividers
   - Tooltips

### 🎯 Interactive Features

#### Prop Editor
- **Text Input**: Change text content in real-time
- **Color Picker**: Select colors from the design system
- **Font Selector**: Choose from available typography styles
- **Size Options**: Switch between size variants
- **Boolean Toggles**: Enable/disable features
- **Dropdown Selectors**: Choose from predefined options

#### Navigation
- **Sidebar Navigation**: Organized by category
- **Search**: Find components quickly
- **Breadcrumbs**: See your current location
- **Quick Links**: Jump to design tokens or components

### 📚 Documentation Structure

```
Design Tokens/
  ├── Colors/
  │   ├── Primitives
  │   └── Semantic
  ├── Typography/
  │   ├── Primitives
  │   └── Semantic
  └── Spacing/
      ├── Primitives
      └── Usage

Components/
  ├── Buttons/
  ├── Inputs/
  ├── Badges/
  ├── Alerts/
  ├── Dialogs/
  ├── Lists/
  ├── Navigation/
  ├── Progress/
  └── Misc/

Brand/
  └── Logo
```

## Usage Guidelines

### Using Design Tokens

Always use design tokens instead of hardcoded values:

```dart
// ✅ Good
Container(
  padding: EdgeInsets.all(SharpsellTheme.paddingMD),
  color: SharpsellTheme.primaryColor,
)

// ❌ Bad
Container(
  padding: EdgeInsets.all(12),
  color: Color(0xFFAF1E57),
)
```

### Component Best Practices

1. **Consistency**: Use the same component variants throughout your app
2. **Accessibility**: Ensure sufficient contrast and proper labels
3. **Responsiveness**: Test components at different screen sizes
4. **Documentation**: Document any customizations or extensions

### Spacing Guidelines

- Use **Component Padding** for internal spacing within components
- Use **Stack Spacing** for vertical gaps between elements
- Use **Inline Spacing** for horizontal gaps between elements
- Use **Section Spacing** for major layout divisions

## Contributing

When adding new components:

1. Create the component file in `lib/components/`
2. Create a story file in `lib/stories/`
3. Add documentation with ComponentDocs
4. Include Do's and Don'ts
5. Add usage examples
6. Register in `all_stories.dart`

## Resources

- [Figma Design System](link-to-figma)
- [Component Guidelines](CONTRIBUTING.md)
- [Design Tokens Reference](lib/app/theme.dart)
