import 'dart:convert';
import 'package:http/http.dart' as http;
import '../utils/component_template.dart';

/// Extracts component specifications from Figma designs
class FigmaComponentExtractor {
  final String accessToken;
  final String fileKey;

  FigmaComponentExtractor({
    required this.accessToken,
    required this.fileKey,
  });

  /// Extract component specification from a Figma node
  Future<ComponentSpec> extractComponent(String nodeId) async {
    final url = 'https://api.figma.com/v1/files/$fileKey/nodes?ids=$nodeId';
    
    final response = await http.get(
      Uri.parse(url),
      headers: {'X-Figma-Token': accessToken},
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load Figma design: ${response.statusCode}');
    }

    final data = json.decode(response.body);
    return _parseFigmaNode(data, nodeId);
  }

  ComponentSpec _parseFigmaNode(Map<String, dynamic> data, String nodeId) {
    // Parse Figma node data and extract component specifications
    // This is a simplified parser - actual implementation would need
    // to handle the full Figma API response structure
    
    final node = data['nodes']?[nodeId]?['document'];
    final name = node?['name'] ?? 'Component_$nodeId';
    final description = node?['description'] ?? 'Component from Figma design';
    
    // Extract properties from Figma component properties
    final props = <ComponentProp>[];
    
    // Extract colors, typography, spacing from styles
    // Extract component variants from component sets
    
    return ComponentSpec(
      name: name,
      category: _inferCategory(name),
      description: description,
      props: props,
      nodeId: nodeId,
    );
  }

  String _inferCategory(String name) {
    final lowerName = name.toLowerCase();
    
    if (lowerName.contains('button') || lowerName.contains('btn')) {
      return 'buttons';
    } else if (lowerName.contains('card')) {
      return 'cards';
    } else if (lowerName.contains('input') || lowerName.contains('field')) {
      return 'inputs';
    } else if (lowerName.contains('dialog') || lowerName.contains('modal')) {
      return 'dialogs';
    } else if (lowerName.contains('appbar') || lowerName.contains('navbar')) {
      return 'navigation';
    } else if (lowerName.contains('chip') || lowerName.contains('tag')) {
      return 'chips';
    } else if (lowerName.contains('list') || lowerName.contains('item')) {
      return 'lists';
    } else if (lowerName.contains('icon')) {
      return 'icons';
    } else if (lowerName.contains('avatar')) {
      return 'avatars';
    } else if (lowerName.contains('badge')) {
      return 'badges';
    } else if (lowerName.contains('progress') || lowerName.contains('loader')) {
      return 'progress';
    } else if (lowerName.contains('switch') || lowerName.contains('toggle')) {
      return 'switches';
    } else if (lowerName.contains('slider')) {
      return 'sliders';
    } else if (lowerName.contains('tab')) {
      return 'tabs';
    } else if (lowerName.contains('menu') || lowerName.contains('dropdown')) {
      return 'menus';
    } else if (lowerName.contains('tooltip')) {
      return 'tooltips';
    } else if (lowerName.contains('snackbar') || lowerName.contains('toast')) {
      return 'snackbars';
    } else {
      return 'misc';
    }
  }
}

/// Component specification extracted from Figma
class ComponentSpec {
  final String name;
  final String category;
  final String description;
  final List<ComponentProp> props;
  final String nodeId;
  final Map<String, dynamic>? designTokens;

  ComponentSpec({
    required this.name,
    required this.category,
    required this.description,
    required this.props,
    required this.nodeId,
    this.designTokens,
  });
}
