import 'package:flutter/material.dart';

/// Sharpsell Design System Theme
/// Based on Material 2 design principles
/// Design tokens extracted from Figma design system
class SharpsellTheme {
  // ============================================================================
  // PRIMARY COLORS
  // ============================================================================
  static const Color primaryColor = Color(0xFFAF1E57); // primary/light
  static const Color primaryLight = Color(0xFFAF1E57);
  static const Color primaryDark = Color(0xFF8D1846);
  
  // Primary Alpha Variants
  static const Color primaryAlpha10 = Color(0x1AAF1E57);
  static const Color primaryAlpha20 = Color(0x33AF1E57);
  static const Color primaryAlpha30 = Color(0x4DAF1E57);
  static const Color primaryAlpha40 = Color(0x66AF1E57);
  static const Color primaryAlpha50 = Color(0x80AF1E57);
  static const Color primaryAlpha60 = Color(0x99AF1E57);
  static const Color primaryAlpha70 = Color(0xB3AF1E57);
  static const Color primaryAlpha80 = Color(0xCCAF1E57);
  static const Color primaryAlpha90 = Color(0xE6AF1E57);
  
  // ============================================================================
  // SECONDARY COLORS
  // ============================================================================
  static const Color secondaryColor = Color(0xFFEBA403); // secondary/light
  static const Color secondaryLight = Color(0xFFEBA403);
  static const Color secondaryDark = Color(0xFFD39301);
  
  // ============================================================================
  // ACCENT COLORS
  // ============================================================================
  static const Color accentColor = Color(0xFFEB3003); // accent/light
  static const Color accentLight = Color(0xFFEB3003);
  static const Color accentDark = Color(0xFFC72C06);
  
  // Accent Alpha Variants
  static const Color accentAlpha10 = Color(0x1AEB3003);
  static const Color accentAlpha20 = Color(0x33EB3003);
  static const Color accentAlpha30 = Color(0x4DEB3003);
  static const Color accentAlpha40 = Color(0x66EB3003);
  static const Color accentAlpha50 = Color(0x80EB3003);
  static const Color accentAlpha60 = Color(0x99EB3003);
  static const Color accentAlpha70 = Color(0xB3EB3003);
  static const Color accentAlpha80 = Color(0xCCEB3003);
  static const Color accentAlpha90 = Color(0xE6EB3003);
  
  // ============================================================================
  // NEUTRAL COLORS
  // ============================================================================
  static const Color transparent = Color(0x00FFFFFF);
  static const Color white = Color(0xFFFFFFFF);
  static const Color lightGrey = Color(0xFFF4F4F4);
  static const Color lightGrey2 = Color(0xFFDCDCDC);
  static const Color grey3 = Color(0xFFA6A6A6);
  static const Color darkGrey = Color(0xFF656565);
  static const Color iconGrey = Color(0xFF363636);
  static const Color black = Color(0xFF1D1D1D);
  static const Color fullBlack = Color(0xFF000000);
  
  // Black Alpha Variants
  static const Color blackAlpha10 = Color(0x1A1D1D1D);
  static const Color blackAlpha15 = Color(0x261D1D1D);
  static const Color blackAlpha20 = Color(0x331D1D1D);
  static const Color blackAlpha30 = Color(0x4D1D1D1D);
  static const Color blackAlpha40 = Color(0x661D1D1D);
  static const Color blackAlpha50 = Color(0x801D1D1D);
  static const Color blackAlpha60 = Color(0x991D1D1D);
  static const Color blackAlpha70 = Color(0xB31D1D1D);
  
  // ============================================================================
  // SEMANTIC COLORS
  // ============================================================================
  
  // Error Colors
  static const Color errorColor = Color(0xFFFF1616); // error/vermillion
  static const Color errorLight = Color(0xFFFFDDDD); // error/light vermillion
  static const Color errorDark = Color(0xFFCC0000); // error/vermillion dark
  
  // Error Alpha Variants
  static const Color errorAlpha10 = Color(0x1AFF1616);
  static const Color errorAlpha20 = Color(0x33FF1616);
  static const Color errorAlpha30 = Color(0x4DFF1616);
  static const Color errorAlpha40 = Color(0x66FF1616);
  static const Color errorAlpha50 = Color(0x80FF1616);
  static const Color errorAlpha60 = Color(0x99FF1616);
  static const Color errorAlpha70 = Color(0xB3FF1616);
  static const Color errorAlpha80 = Color(0xCCFF1616);
  static const Color errorAlpha90 = Color(0xE6FF1616);
  
  // Warning Colors
  static const Color warningColor = Color(0xFFFFD016); // warning/yellow mellow
  static const Color warningLight = Color(0xFFFFF1B9); // warning/yellow mellow light
  static const Color warningDark = Color(0xFFB54708); // warning/yellow mellow dark
  
  // Warning Alpha Variants
  static const Color warningAlpha10 = Color(0x1AFFD016);
  static const Color warningAlpha20 = Color(0x33FFD016);
  static const Color warningAlpha30 = Color(0x4DFFD016);
  static const Color warningAlpha40 = Color(0x66FFD016);
  static const Color warningAlpha50 = Color(0x80FFD016);
  static const Color warningAlpha60 = Color(0x99FFD016);
  static const Color warningAlpha70 = Color(0xB3FFD016);
  static const Color warningAlpha80 = Color(0xCCFFD016);
  static const Color warningAlpha90 = Color(0xE6FFD016);
  
  // Success Colors
  static const Color successColor = Color(0xFF79D563); // success/go green
  static const Color successLight = Color(0xFFDEF5D8); // success/go green light
  static const Color successDark = Color(0xFF67B055); // success/go green dark
  
  // Success Alpha Variants
  static const Color successAlpha10 = Color(0x1A79D563);
  static const Color successAlpha20 = Color(0x3379D563);
  static const Color successAlpha30 = Color(0x4D79D563);
  static const Color successAlpha40 = Color(0x6679D563);
  static const Color successAlpha50 = Color(0x8079D563);
  static const Color successAlpha60 = Color(0x9979D563);
  static const Color successAlpha70 = Color(0xB379D563);
  static const Color successAlpha80 = Color(0xCC79D563);
  static const Color successAlpha90 = Color(0xE679D563);
  
  // ============================================================================
  // BACKGROUND & SURFACE COLORS
  // ============================================================================
  static const Color backgroundColor = Color(0xFFF4F4F4); // light grey
  static const Color surfaceColor = Color(0xFFFFFFFF); // white
  
  // ============================================================================
  // TEXT COLORS
  // ============================================================================
  static const Color textPrimary = Color(0xFF1D1D1D); // black
  static const Color textSecondary = Color(0xFF656565); // dark grey
  static const Color textDisabled = Color(0xFFA6A6A6); // grey 3
  static const Color textOnPrimary = Color(0xFFFFFFFF); // white
  static const Color textOnSecondary = Color(0xFFFFFFFF); // white
  
  // ============================================================================
  // TYPOGRAPHY
  // ============================================================================
  
  // Font Families
  static const String fontFamilyHeading = 'Zilla Slab';
  static const String fontFamilyParagraph = 'Nunito';
  
  // Font Weights
  static const FontWeight fontWeightRegular = FontWeight.w400;
  static const FontWeight fontWeightBold = FontWeight.w700;
  
  // Heading Styles
  static const TextStyle heading1 = TextStyle(
    fontFamily: fontFamilyHeading,
    fontWeight: fontWeightBold,
    fontSize: 22,
    letterSpacing: 0,
    height: 1.0, // auto
  );
  
  static const TextStyle heading2 = TextStyle(
    fontFamily: fontFamilyHeading,
    fontWeight: fontWeightBold,
    fontSize: 19,
    letterSpacing: 0,
    height: 1.0,
  );
  
  static const TextStyle heading3 = TextStyle(
    fontFamily: fontFamilyHeading,
    fontWeight: fontWeightBold,
    fontSize: 16,
    letterSpacing: 0,
    height: 1.0,
  );
  
  static const TextStyle heading4 = TextStyle(
    fontFamily: fontFamilyHeading,
    fontWeight: fontWeightRegular,
    fontSize: 16,
    letterSpacing: 0,
    height: 1.0,
  );
  
  static const TextStyle heading5 = TextStyle(
    fontFamily: fontFamilyHeading,
    fontWeight: fontWeightBold,
    fontSize: 13,
    letterSpacing: 0,
    height: 1.0,
  );
  
  // Paragraph Styles
  static const TextStyle paragraph1 = TextStyle(
    fontFamily: fontFamilyParagraph,
    fontWeight: fontWeightRegular,
    fontSize: 14,
    letterSpacing: 0,
    height: 1.0,
  );
  
  static const TextStyle paragraph2 = TextStyle(
    fontFamily: fontFamilyParagraph,
    fontWeight: fontWeightBold,
    fontSize: 14,
    letterSpacing: 0,
    height: 1.0,
  );
  
  static const TextStyle paragraph3 = TextStyle(
    fontFamily: fontFamilyParagraph,
    fontWeight: fontWeightRegular,
    fontSize: 12,
    letterSpacing: 0,
    height: 1.0,
  );
  
  static const TextStyle paragraph4 = TextStyle(
    fontFamily: fontFamilyParagraph,
    fontWeight: fontWeightBold,
    fontSize: 12,
    letterSpacing: 0,
    height: 1.0,
  );
  
  static const TextStyle paragraph5 = TextStyle(
    fontFamily: fontFamilyParagraph,
    fontWeight: fontWeightRegular,
    fontSize: 10,
    letterSpacing: 0,
    height: 1.0,
  );
  
  static const TextStyle paragraph6 = TextStyle(
    fontFamily: fontFamilyParagraph,
    fontWeight: fontWeightBold,
    fontSize: 10,
    letterSpacing: 0,
    height: 1.0,
  );
  
  // ============================================================================
  // SPACING
  // ============================================================================
  
  // Component Padding
  static const double paddingXS = 4.0;
  static const double paddingSM = 8.0;
  static const double paddingMD = 12.0;
  static const double paddingLG = 16.0;
  static const double paddingXL = 24.0;
  
  // Stack Spacing (vertical)
  static const double stackTight = 4.0;
  static const double stackDefault = 8.0;
  static const double stackLoose = 12.0;
  static const double stackRelaxed = 16.0;
  
  // Inline Spacing (horizontal)
  static const double inlineTight = 2.0;
  static const double inlineDefault = 4.0;
  static const double inlineLoose = 8.0;
  static const double inlineRelaxed = 12.0;
  
  // Section Spacing
  static const double sectionDefault = 24.0;
  static const double sectionLarge = 32.0;
  static const double sectionXL = 40.0;
  
  // Legacy Spacing (for backward compatibility)
  static const double spacingXS = 4.0;
  static const double spacingS = 8.0;
  static const double spacingM = 16.0;
  static const double spacingL = 24.0;
  static const double spacingXL = 32.0;
  static const double spacingXXL = 48.0;
  
  // ============================================================================
  // BORDER RADIUS
  // ============================================================================
  static const double radiusNone = 0.0;
  static const double radiusXS = 2.0;
  static const double radiusSM = 4.0;
  static const double radiusMD = 8.0;
  static const double radiusLG = 12.0;
  static const double radiusXL = 16.0;
  static const double radius2XL = 24.0;
  static const double radiusPill = 9999.0;
  
  // Legacy Border Radius (for backward compatibility)
  static const double radiusS = 4.0;
  static const double radiusM = 8.0;
  static const double radiusL = 12.0;
  
  // ============================================================================
  // BORDER WIDTH
  // ============================================================================
  static const double borderWidthNone = 0.0;
  static const double borderWidthDefault = 1.0;
  static const double borderWidthThick = 2.0;
  static const double borderWidthHeavy = 3.0;
  static const double borderWidthXHeavy = 4.0;
  
  // ============================================================================
  // ELEVATION / SHADOWS
  // ============================================================================
  
  // Elevation None
  static const double elevationNone = 0.0;
  static const BoxShadow elevationNoneShadow = BoxShadow(
    color: transparent,
    offset: Offset(0, 0),
    blurRadius: 0,
    spreadRadius: 0,
  );
  
  // Elevation Small
  static const double elevationSmall = 1.0;
  static const BoxShadow elevationSmallShadow = BoxShadow(
    color: Color(0x261D1D1D), // black alpha 15%
    offset: Offset(0, 1),
    blurRadius: 6,
    spreadRadius: 0,
  );
  
  // Elevation Medium
  static const double elevationMedium = 2.0;
  static const BoxShadow elevationMediumShadow = BoxShadow(
    color: Color(0x261D1D1D), // black alpha 15%
    offset: Offset(0, 2),
    blurRadius: 8,
    spreadRadius: 0,
  );
  
  // Elevation Large
  static const double elevationLarge = 3.0;
  static const BoxShadow elevationLargeShadow = BoxShadow(
    color: Color(0x261D1D1D), // black alpha 15%
    offset: Offset(0, 3),
    blurRadius: 12,
    spreadRadius: 0,
  );
  
  // Elevation X-Large
  static const double elevationXLarge = 6.0;
  static const BoxShadow elevationXLargeShadow = BoxShadow(
    color: Color(0x261D1D1D), // black alpha 15%
    offset: Offset(0, 6),
    blurRadius: 12,
    spreadRadius: 2,
  );
  
  // Legacy Elevation (for backward compatibility)
  static const double elevationLow = 2.0;
  static const double elevationHigh = 8.0;
  static const double elevationXHigh = 16.0;

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: false, // Material 2
      brightness: Brightness.light,
      fontFamily: fontFamilyParagraph, // Default to Nunito
      primarySwatch: MaterialColor(
        primaryColor.value,
        <int, Color>{
          50: primaryAlpha10,
          100: primaryAlpha20,
          200: primaryAlpha30,
          300: primaryAlpha40,
          400: primaryAlpha50,
          500: primaryColor,
          600: primaryDark,
          700: primaryDark,
          800: primaryDark,
          900: primaryDark,
        },
      ),
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      cardColor: surfaceColor,
      cardTheme: CardThemeData(
        elevation: elevationMedium,
        shadowColor: elevationMediumShadow.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMD),
        ),
      ),
      appBarTheme: AppBarTheme(
        elevation: elevationMedium,
        backgroundColor: primaryColor,
        foregroundColor: white,
        centerTitle: true,
        titleTextStyle: heading3.copyWith(color: white),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: primaryColor,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMD),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: white,
          elevation: elevationMedium,
          shadowColor: elevationMediumShadow.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusMD),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: paddingLG,
            vertical: paddingMD,
          ),
          textStyle: paragraph2,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusMD),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: paddingLG,
            vertical: paddingMD,
          ),
          textStyle: paragraph2,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: const BorderSide(color: primaryColor, width: borderWidthDefault),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusMD),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: paddingLG,
            vertical: paddingMD,
          ),
          textStyle: paragraph2,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMD),
          borderSide: const BorderSide(color: lightGrey2, width: borderWidthDefault),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMD),
          borderSide: const BorderSide(color: lightGrey2, width: borderWidthDefault),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMD),
          borderSide: const BorderSide(color: primaryColor, width: borderWidthThick),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMD),
          borderSide: const BorderSide(color: errorColor, width: borderWidthDefault),
        ),
        filled: true,
        fillColor: surfaceColor,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: paddingMD,
          vertical: paddingMD,
        ),
      ),
      textTheme: TextTheme(
        // Display styles - mapped to headings
        displayLarge: heading1.copyWith(color: textPrimary),
        displayMedium: heading2.copyWith(color: textPrimary),
        displaySmall: heading3.copyWith(color: textPrimary),
        
        // Headline styles - mapped to headings
        headlineLarge: heading1.copyWith(color: textPrimary),
        headlineMedium: heading2.copyWith(color: textPrimary),
        headlineSmall: heading3.copyWith(color: textPrimary),
        
        // Title styles - mapped to headings
        titleLarge: heading3.copyWith(color: textPrimary),
        titleMedium: heading4.copyWith(color: textPrimary),
        titleSmall: heading5.copyWith(color: textPrimary),
        
        // Body styles - mapped to paragraphs
        bodyLarge: paragraph1.copyWith(color: textPrimary),
        bodyMedium: paragraph3.copyWith(color: textPrimary),
        bodySmall: paragraph5.copyWith(color: textSecondary),
        
        // Label styles - mapped to paragraphs
        labelLarge: paragraph2.copyWith(color: textPrimary),
        labelMedium: paragraph4.copyWith(color: textPrimary),
        labelSmall: paragraph6.copyWith(color: textSecondary),
      ),
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: surfaceColor,
        background: backgroundColor,
        error: errorColor,
        onPrimary: white,
        onSecondary: white,
        onSurface: textPrimary,
        onBackground: textPrimary,
        onError: white,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: false, // Material 2
      brightness: Brightness.dark,
      fontFamily: fontFamilyParagraph, // Default to Nunito
      primarySwatch: MaterialColor(
        primaryLight.value,
        <int, Color>{
          50: primaryAlpha10,
          100: primaryAlpha20,
          200: primaryAlpha30,
          300: primaryAlpha40,
          400: primaryAlpha50,
          500: primaryLight,
          600: primaryColor,
          700: primaryColor,
          800: primaryColor,
          900: primaryDark,
        },
      ),
      primaryColor: primaryLight,
      scaffoldBackgroundColor: black,
      cardColor: iconGrey,
      cardTheme: CardThemeData(
        elevation: elevationMedium,
        shadowColor: elevationMediumShadow.color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMD),
        ),
      ),
      appBarTheme: AppBarTheme(
        elevation: elevationMedium,
        backgroundColor: iconGrey,
        foregroundColor: white,
        centerTitle: true,
        titleTextStyle: heading3.copyWith(color: white),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: primaryLight,
        textTheme: ButtonTextTheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radiusMD),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryLight,
          foregroundColor: white,
          elevation: elevationMedium,
          shadowColor: elevationMediumShadow.color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusMD),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: paddingLG,
            vertical: paddingMD,
          ),
          textStyle: paragraph2,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: primaryLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusMD),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: paddingLG,
            vertical: paddingMD,
          ),
          textStyle: paragraph2,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryLight,
          side: const BorderSide(color: primaryLight, width: borderWidthDefault),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radiusMD),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: paddingLG,
            vertical: paddingMD,
          ),
          textStyle: paragraph2,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMD),
          borderSide: const BorderSide(color: darkGrey, width: borderWidthDefault),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMD),
          borderSide: const BorderSide(color: darkGrey, width: borderWidthDefault),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMD),
          borderSide: const BorderSide(color: primaryLight, width: borderWidthThick),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radiusMD),
          borderSide: const BorderSide(color: errorColor, width: borderWidthDefault),
        ),
        filled: true,
        fillColor: iconGrey,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: paddingMD,
          vertical: paddingMD,
        ),
      ),
      textTheme: TextTheme(
        // Display styles - mapped to headings
        displayLarge: heading1.copyWith(color: white),
        displayMedium: heading2.copyWith(color: white),
        displaySmall: heading3.copyWith(color: white),
        
        // Headline styles - mapped to headings
        headlineLarge: heading1.copyWith(color: white),
        headlineMedium: heading2.copyWith(color: white),
        headlineSmall: heading3.copyWith(color: white),
        
        // Title styles - mapped to headings
        titleLarge: heading3.copyWith(color: white),
        titleMedium: heading4.copyWith(color: white),
        titleSmall: heading5.copyWith(color: white),
        
        // Body styles - mapped to paragraphs
        bodyLarge: paragraph1.copyWith(color: white),
        bodyMedium: paragraph3.copyWith(color: white),
        bodySmall: paragraph5.copyWith(color: grey3),
        
        // Label styles - mapped to paragraphs
        labelLarge: paragraph2.copyWith(color: white),
        labelMedium: paragraph4.copyWith(color: white),
        labelSmall: paragraph6.copyWith(color: grey3),
      ),
      colorScheme: const ColorScheme.dark(
        primary: primaryLight,
        secondary: secondaryLight,
        surface: iconGrey,
        background: black,
        error: errorLight,
        onPrimary: white,
        onSecondary: white,
        onSurface: white,
        onBackground: white,
        onError: white,
      ),
    );
  }
}
