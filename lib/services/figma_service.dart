import 'dart:convert';
import 'package:http/http.dart' as http;

/// Service for interacting with Figma API
class FigmaService {
  final String accessToken;
  final String fileKey;

  FigmaService({
    required this.accessToken,
    required this.fileKey,
  });

  /// Base URL for Figma API
  static const String baseUrl = 'https://api.figma.com/v1';

  /// Get design context for a specific node
  Future<Map<String, dynamic>> getNodeDesign(String nodeId) async {
    final url = '$baseUrl/files/$fileKey/nodes?ids=$nodeId';
    
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'X-Figma-Token': accessToken,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load Figma design: ${response.statusCode}');
    }
  }

  /// Get all components from the file
  Future<Map<String, dynamic>> getComponents() async {
    final url = '$baseUrl/files/$fileKey/components';
    
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'X-Figma-Token': accessToken,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load Figma components: ${response.statusCode}');
    }
  }

  /// Get file metadata
  Future<Map<String, dynamic>> getFileMetadata() async {
    final url = '$baseUrl/files/$fileKey';
    
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'X-Figma-Token': accessToken,
      },
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load Figma file: ${response.statusCode}');
    }
  }

  /// Extract design tokens from Figma
  Future<Map<String, dynamic>> extractDesignTokens() async {
    // This would extract colors, typography, spacing, etc. from Figma
    // Implementation depends on how design tokens are structured in Figma
    return {};
  }
}
