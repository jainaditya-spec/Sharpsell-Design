/// Template for generating well-documented Flutter components
class ComponentTemplate {
  /// Generate component code with full documentation
  static String generateComponent({
    required String componentName,
    required String category,
    required String description,
    required List<ComponentProp> props,
    required String implementation,
  }) {
    final className = _toPascalCase(componentName);
    final propsDoc = props.map((p) => _generatePropDoc(p)).join('\n');
    final propsList = props.map((p) => _generatePropDeclaration(p)).join('\n    ');
    final propsInitializers = props.map((p) => _generatePropInitializer(p)).join(',\n      ');

    return '''
import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// $description
/// 
/// This component is part of the Sharpsell Design System.
/// 
/// **Category:** $category
/// **Usage:** Use this component to [describe usage]
/// 
/// Example:
/// ```dart
/// ${className}(
///   ${props.where((p) => p.required).map((p) => '${p.name}: value,').join('\n///   ')}
/// )
/// ```
class $className extends StatelessWidget {
$propsDoc
  const $className({
    super.key,
$propsList
  });

  @override
  Widget build(BuildContext context) {
$implementation
  }
}
''';
  }

  /// Generate story code with knobs
  static String generateStory({
    required String componentName,
    required String category,
    required String description,
    required List<ComponentProp> props,
  }) {
    final className = _toPascalCase(componentName);
    final knobs = props.map((p) => _generateKnob(p)).join('\n          ');

    return '''
    Story(
      name: '$category/$componentName',
      description: '$description',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: $className(
$knobs
          ),
        ),
      ),
    ),''';
  }

  static String _generatePropDoc(ComponentProp prop) {
    final required = prop.required ? ' (required)' : '';
    final defaultValue = prop.defaultValue != null ? ' Default: `${prop.defaultValue}`.' : '';
    return '''  /// ${prop.description}$required$defaultValue''';
  }

  static String _generatePropDeclaration(ComponentProp prop) {
    final required = prop.required ? 'required ' : '';
    return '''    $required${prop.type}${prop.nullable ? '?' : ''} ${prop.name}${prop.defaultValue != null ? ' = ${prop.defaultValue}' : ''},''';
  }

  static String _generatePropInitializer(ComponentProp prop) {
    return '''      ${prop.name}: ${prop.name}''';
  }

  static String _generateKnob(ComponentProp prop) {
    if (prop.type == 'String') {
      return '''            ${prop.name}: context.knobs.text(
              label: '${prop.displayName}',
              initial: '${prop.defaultValue ?? ''}',
            ),''';
    } else if (prop.type == 'bool') {
      return '''            ${prop.name}: context.knobs.boolean(
              label: '${prop.displayName}',
              initial: ${prop.defaultValue ?? 'false'},
            ),''';
    } else if (prop.type == 'double') {
      return '''            ${prop.name}: context.knobs.slider(
              label: '${prop.displayName}',
              initial: ${prop.defaultValue ?? '0.0'},
              min: ${prop.min ?? '0.0'},
              max: ${prop.max ?? '100.0'},
            ),''';
    } else if (prop.type == 'int') {
      return '''            ${prop.name}: context.knobs.sliderInt(
              label: '${prop.displayName}',
              initial: ${prop.defaultValue ?? '0'},
              min: ${prop.min?.toInt() ?? 0},
              max: ${prop.max?.toInt() ?? 100},
            ),''';
    } else {
      // For enums or complex types, use options
      return '''            ${prop.name}: context.knobs.options(
              label: '${prop.displayName}',
              initial: ${prop.defaultValue ?? 'null'},
              options: [
                // TODO: Add options
              ],
            ),''';
    }
  }

  static String _toPascalCase(String input) {
    return input
        .split(RegExp(r'[\s_-]+'))
        .map((word) => word.isEmpty
            ? ''
            : word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join();
  }
}

/// Component property definition
class ComponentProp {
  final String name;
  final String type;
  final String description;
  final bool required;
  final String? defaultValue;
  final bool nullable;
  final String displayName;
  final double? min;
  final double? max;

  ComponentProp({
    required this.name,
    required this.type,
    required this.description,
    this.required = false,
    this.defaultValue,
    this.nullable = false,
    String? displayName,
    this.min,
    this.max,
  }) : displayName = displayName ?? name;
}
