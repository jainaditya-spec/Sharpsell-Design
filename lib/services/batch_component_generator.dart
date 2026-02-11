import 'dart:io';
import 'package:path/path.dart' as path;
import '../utils/component_template.dart';

/// Batch generator for all 348 components
class BatchComponentGenerator {
  final String componentsDir;
  final String storiesDir;
  final Map<String, List<String>> componentCategories = {};

  BatchComponentGenerator({
    required this.componentsDir,
    required this.storiesDir,
  });

  /// Generate all components from node IDs
  Future<void> generateAllComponents(List<String> nodeIds) async {
    print('Generating ${nodeIds.length} components...');
    
    // Group by category
    final categorized = <String, List<ComponentSpec>>{};
    
    for (final nodeId in nodeIds) {
      final spec = _createComponentSpec(nodeId);
      categorized.putIfAbsent(spec.category, () => []).add(spec);
    }
    
    // Generate components by category
    for (final entry in categorized.entries) {
      await _generateCategoryComponents(entry.key, entry.value);
    }
    
    print('✅ Generated ${nodeIds.length} components in ${categorized.length} categories');
  }

  Future<void> _generateCategoryComponents(
    String category,
    List<ComponentSpec> specs,
  ) async {
    final categoryDir = path.join(componentsDir, category);
    await Directory(categoryDir).create(recursive: true);
    
    final storyFile = File(path.join(storiesDir, '${category}_stories.dart'));
    final storyBuffer = StringBuffer();
    
    // Write story file header
    storyBuffer.writeln(_getStoryFileHeader(category));
    
    for (final spec in specs) {
      // Generate component file
      await _generateComponentFile(categoryDir, spec);
      
      // Generate story entry
      storyBuffer.writeln(_generateStoryEntry(spec));
    }
    
    // Close story file
    storyBuffer.writeln('  ];');
    storyBuffer.writeln('}');
    
    await storyFile.writeAsString(storyBuffer.toString());
  }

  Future<void> _generateComponentFile(String categoryDir, ComponentSpec spec) async {
    final fileName = _toSnakeCase(spec.name);
    final file = File(path.join(categoryDir, '${fileName}.dart'));
    
    final code = ComponentTemplate.generateComponent(
      componentName: spec.name,
      category: spec.category,
      description: spec.description,
      props: spec.props,
      implementation: _generateImplementation(spec),
    );
    
    await file.writeAsString(code);
  }

  String _generateImplementation(ComponentSpec spec) {
    // Generate implementation based on component type
    if (spec.category == 'buttons') {
      return _generateButtonImplementation(spec);
    } else if (spec.category == 'cards') {
      return _generateCardImplementation(spec);
    } else if (spec.category == 'inputs') {
      return _generateInputImplementation(spec);
    } else {
      return _generateGenericImplementation(spec);
    }
  }

  String _generateButtonImplementation(ComponentSpec spec) {
    return '''    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: SharpsellTheme.primaryColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(
          horizontal: SharpsellTheme.spacingL,
          vertical: SharpsellTheme.spacingM,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
        ),
      ),
      child: Text(text),
    );''';
  }

  String _generateCardImplementation(ComponentSpec spec) {
    return '''    return Card(
      elevation: elevation ?? SharpsellTheme.elevationLow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Padding(
        padding: const EdgeInsets.all(SharpsellTheme.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (title != null)
              Text(
                title!,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            if (content != null) ...[
              const SizedBox(height: SharpsellTheme.spacingM),
              Text(
                content!,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ],
        ),
      ),
    );''';
  }

  String _generateInputImplementation(ComponentSpec spec) {
    return '''    return TextField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        helperText: helperText,
        errorText: errorText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        filled: filled,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
        ),
      ),
    );''';
  }

  String _generateGenericImplementation(ComponentSpec spec) {
    return '''    // TODO: Implement ${spec.name} component
    // Design specifications from Figma node: ${spec.nodeId}
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        '${spec.name}',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );''';
  }

  String _generateStoryEntry(ComponentSpec spec) {
    return ComponentTemplate.generateStory(
      componentName: spec.name,
      category: spec.category,
      description: spec.description,
      props: spec.props,
    );
  }

  String _getStoryFileHeader(String category) {
    final categoryName = category.split('').map((c) => c == c.toUpperCase() ? '_$c' : c).join().toUpperCase();
    return '''import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/$category/${_toSnakeCase(category)}_components.dart';

/// $category component stories
/// Auto-generated from Figma designs
List<Story> get ${category}Stories {
  return [
''';
  }

  ComponentSpec _createComponentSpec(String nodeId) {
    // Create component spec from node ID
    // In production, this would extract from Figma API
    final name = 'Component_${nodeId.replaceAll(':', '_')}';
    final category = _inferCategory(name);
    
    return ComponentSpec(
      name: name,
      category: category,
      description: 'Component extracted from Figma design (Node: $nodeId)',
      props: _getDefaultProps(category),
      nodeId: nodeId,
    );
  }

  List<ComponentProp> _getDefaultProps(String category) {
    switch (category) {
      case 'buttons':
        return [
          ComponentProp(
            name: 'text',
            type: 'String',
            description: 'The text to display on the button',
            required: true,
            defaultValue: null,
          ),
          ComponentProp(
            name: 'onPressed',
            type: 'VoidCallback',
            description: 'Callback function when button is pressed',
            nullable: true,
          ),
          ComponentProp(
            name: 'enabled',
            type: 'bool',
            description: 'Whether the button is enabled',
            defaultValue: 'true',
          ),
        ];
      case 'cards':
        return [
          ComponentProp(
            name: 'title',
            type: 'String',
            description: 'Card title',
            nullable: true,
          ),
          ComponentProp(
            name: 'content',
            type: 'String',
            description: 'Card content',
            nullable: true,
          ),
          ComponentProp(
            name: 'elevation',
            type: 'double',
            description: 'Card elevation',
            nullable: true,
            defaultValue: 'SharpsellTheme.elevationLow',
          ),
        ];
      case 'inputs':
        return [
          ComponentProp(
            name: 'label',
            type: 'String',
            description: 'Input label',
            nullable: true,
          ),
          ComponentProp(
            name: 'hint',
            type: 'String',
            description: 'Placeholder text',
            nullable: true,
          ),
          ComponentProp(
            name: 'filled',
            type: 'bool',
            description: 'Whether input is filled',
            defaultValue: 'true',
          ),
        ];
      default:
        return [];
    }
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

  String _toSnakeCase(String input) {
    return input
        .replaceAllMapped(RegExp(r'([A-Z])'), (match) => '_${match.group(1)!.toLowerCase()}')
        .replaceAll(RegExp(r'[\s_-]+'), '_')
        .replaceAll(RegExp(r'^_|_$'), '')
        .toLowerCase();
  }
}
