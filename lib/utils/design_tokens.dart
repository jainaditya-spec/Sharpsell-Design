import 'package:flutter/material.dart';
import '../app/theme.dart';

/// Design tokens extracted from Figma/Zeplin
class DesignTokens {
  // Colors
  static const Map<String, Color> colors = {
    'primary': SharpsellTheme.primaryColor,
    'primaryLight': SharpsellTheme.primaryLight,
    'primaryDark': SharpsellTheme.primaryDark,
    'secondary': SharpsellTheme.secondaryColor,
    'accent': SharpsellTheme.accentColor,
    'error': SharpsellTheme.errorColor,
    'success': SharpsellTheme.successColor,
    'warning': SharpsellTheme.warningColor,
    'info': SharpsellTheme.infoColor,
  };

  // Spacing
  static const Map<String, double> spacing = {
    'xs': SharpsellTheme.spacingXS,
    's': SharpsellTheme.spacingS,
    'm': SharpsellTheme.spacingM,
    'l': SharpsellTheme.spacingL,
    'xl': SharpsellTheme.spacingXL,
    'xxl': SharpsellTheme.spacingXXL,
  };

  // Border Radius
  static const Map<String, double> borderRadius = {
    's': SharpsellTheme.radiusS,
    'm': SharpsellTheme.radiusM,
    'l': SharpsellTheme.radiusL,
    'xl': SharpsellTheme.radiusXL,
  };

  // Elevation
  static const Map<String, double> elevation = {
    'none': SharpsellTheme.elevationNone,
    'low': SharpsellTheme.elevationLow,
    'medium': SharpsellTheme.elevationMedium,
    'high': SharpsellTheme.elevationHigh,
    'xHigh': SharpsellTheme.elevationXHigh,
  };
}
