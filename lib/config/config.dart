/// Configuration for Figma and Zeplin integration
class AppConfig {
  // Figma Configuration
  static const String figmaFileKey = '1YWrmI6qh5GQjItVARm2T5';
  static String? figmaAccessToken; // Set via environment variable
  
  // Zeplin Configuration
  static String? zeplinProjectId;
  static String? zeplinAccessToken; // Set via environment variable
  
  /// Initialize configuration from environment variables
  static void initialize() {
    figmaAccessToken = const String.fromEnvironment('FIGMA_TOKEN');
    zeplinAccessToken = const String.fromEnvironment('ZEPLIN_TOKEN');
    zeplinProjectId = const String.fromEnvironment('ZEPLIN_PROJECT_ID');
  }
  
  /// Check if Figma is configured
  static bool get isFigmaConfigured => figmaAccessToken != null && figmaAccessToken!.isNotEmpty;
  
  /// Check if Zeplin is configured
  static bool get isZeplinConfigured => 
      zeplinAccessToken != null && 
      zeplinAccessToken!.isNotEmpty && 
      zeplinProjectId != null && 
      zeplinProjectId!.isNotEmpty;
}
