import 'dart:io';
import 'package:path/path.dart' as path;

/// Service to generate Flutter components from Figma designs
class ComponentGenerator {
  final String componentsDir;
  final String storiesDir;

  ComponentGenerator({
    required this.componentsDir,
    required this.storiesDir,
  });

  /// Generate a Flutter component file from Figma design data
  Future<void> generateComponent({
    required String componentName,
    required String category,
    required Map<String, dynamic> designData,
  }) async {
    final categoryDir = path.join(componentsDir, category);
    await Directory(categoryDir).create(recursive: true);
    
    final componentFile = File(path.join(categoryDir, '${componentName.toLowerCase()}.dart'));
    
    final componentCode = _generateComponentCode(
      componentName: componentName,
      category: category,
      designData: designData,
    );
    
    await componentFile.writeAsString(componentCode);
  }

  /// Generate a story file for a component
  Future<void> generateStory({
    required String componentName,
    required String category,
    required Map<String, dynamic> designData,
  }) async {
    final storyFile = File(path.join(storiesDir, '${category}_stories.dart'));
    
    // Append to existing story file or create new
    final storyCode = _generateStoryCode(
      componentName: componentName,
      category: category,
      designData: designData,
    );
    
    if (await storyFile.exists()) {
      final existingContent = await storyFile.readAsString();
      await storyFile.writeAsString(existingContent + '\n' + storyCode);
    } else {
      await storyFile.writeAsString(_generateStoryFileHeader(category) + storyCode);
    }
  }

  String _generateComponentCode({
    required String componentName,
    required String category,
    required Map<String, dynamic> designData,
  }) {
    final className = _toPascalCase(componentName);
    
    return '''
import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// $componentName component
/// Generated from Figma design
class $className extends StatelessWidget {
  // TODO: Add properties based on Figma design
  // Properties extracted from: ${designData['nodeId'] ?? 'unknown'}
  
  const $className({
    super.key,
    // TODO: Add parameters
  });

  @override
  Widget build(BuildContext context) {
    // TODO: Implement component based on Figma design
    return Container(
      // Placeholder implementation
      child: Text('$componentName'),
    );
  }
}
''';
  }

  String _generateStoryCode({
    required String componentName,
    required String category,
    required Map<String, dynamic> designData,
  }) {
    final className = _toPascalCase(componentName);
    final storyName = _toCamelCase(componentName);
    
    return '''
  Story(
    name: '$category/$componentName',
    description: '${designData['description'] ?? 'Component from Figma'}',
    builder: (context, k) => Padding(
      padding: const EdgeInsets.all(16.0),
      child: $className(
        // TODO: Add knobs and properties
      ),
    ),
  ),
''';
  }

  String _generateStoryFileHeader(String category) {
    return '''
import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/$category/${category}_component.dart';

/// $category component stories
List<Story> get ${category}Stories {
  return [
''';
  }

  String _toPascalCase(String input) {
    return input
        .split(RegExp(r'[\s_-]+'))
        .map((word) => word.isEmpty
            ? ''
            : word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join();
  }

  String _toCamelCase(String input) {
    final pascal = _toPascalCase(input);
    return pascal.isEmpty ? '' : pascal[0].toLowerCase() + pascal.substring(1);
  }
}
