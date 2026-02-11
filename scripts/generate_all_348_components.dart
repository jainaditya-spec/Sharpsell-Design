#!/usr/bin/env dart
// Script to generate all 348 components with proper documentation and props
// Usage: dart scripts/generate_all_348_components.dart

import 'dart:io';
import 'package:path/path.dart' as path;

/// All 348 node IDs from Figma
final List<String> allNodeIds = [
  '1:13865', '1:26316', '1:26315', '1:26314', '1:26313', '1:25444',
  '1:25376', '1:25363', '1:25356', '1:25355', '1:25354', '1:25352',
  '1:25338', '1:25278', '1:25263', '1:25262', '1:25247', '1:25246',
  '1:25245', '1:25243', '1:25242', '1:25240', '1:25238', '1:25233',
  '1:25229', '1:25052', '1:25026', '1:25017', '1:24974', '1:24944',
  '1:24917', '1:24915', '1:24785', '1:24781', '1:24757', '1:24678',
  '1:24403', '1:24402', '1:25237', '1:24237', '1:24226', '1:24225',
  '1:24223', '1:24145', '1:24079', '1:23938', '1:23905', '1:23556',
  '1:25264', '1:23499', '1:23321', '1:23114', '1:23083', '1:24925',
  '1:23070', '1:22894', '1:22874', '1:22769', '1:22378', '1:22366',
  '1:22357', '1:22343', '1:25018', '1:24914', '1:22310', '1:22307',
  '1:22277', '1:24581', '1:22089', '1:22036', '1:21997', '1:21937',
  '1:21928', '1:21917', '1:21900', '1:21891', '1:21880', '1:21879',
  '1:21877', '1:21876', '1:21757', '1:21756', '1:21754', '1:21753',
  '1:23238', '1:21752', '1:21750', '1:23227', '1:21749', '1:17157',
  '1:21748', '1:26312', '1:16990', '1:21705', '1:14024', '1:21701',
  '1:21593', '1:21568', '1:21540', '1:21456', '1:24568', '1:21455',
  '1:21454', '1:21453', '1:21451', '1:25156', '1:15968', '1:21424',
  '1:21373', '1:21367', '1:20047', '1:19982', '1:25239', '1:19866',
  '1:25257', '1:23512', '1:21397', '1:17012', '1:19862', '1:19807',
  '1:22053', '1:15964', '1:19075', '1:18548', '1:18525', '1:18524',
  '1:25445', '1:18484', '1:19963', '1:18428', '1:18427', '1:18403',
  '1:23245', '1:18369', '1:18312', '1:18205', '1:18299', '1:18294',
  '1:22320', '1:19802', '1:18271', '1:25244', '1:18269', '1:19801',
  '1:18266', '1:15718', '1:18220', '1:18198', '1:25402', '1:18197',
  '1:16570', '1:21668', '1:17077', '1:18195', '1:18432', '1:18194',
  '1:25403', '1:24912', '1:15299', '1:18190', '1:18429', '1:18185',
  '1:18352', '1:18183', '1:18169', '1:17641', '1:17621', '1:15970',
  '1:16336', '1:14152', '1:17226', '1:23190', '1:13876', '1:17212',
  '1:25177', '1:16467', '1:16045', '1:16666', '1:17213', '1:21747',
  '1:23233', '1:18438', '1:24918', '1:16507', '1:25345', '1:26311',
  '1:24200', '1:16989', '1:16596', '1:15297', '1:22380', '1:16559',
  '1:16550', '1:15296', '1:17211', '1:18270', '1:25241', '1:24930',
  '1:14036', '1:16495', '1:22396', '1:18196', '1:16396', '1:19865',
  '1:24234', '1:23920', '1:17228', '1:16330', '1:21404', '1:21452',
  '1:15996', '1:24196', '1:16494', '1:21552', '1:16454', '1:17041',
  '1:21878', '1:22265', '1:16460', '1:18289', '1:16455', '1:21457',
  '1:25251', '1:16421', '1:22888', '1:15298', '1:23633', '1:22377',
  '1:17227', '1:14145', '1:18329', '1:16398', '1:19798', '1:21875',
  '1:16397', '1:24227', '1:25446', '1:18251', '1:21809', '1:15966',
  '1:15967', '1:16716', '1:16382', '1:26318', '1:14034', '1:18267',
  '1:25250', '1:14035', '1:16997', '1:26319', '1:14032', '1:20068',
  '1:16349', '1:18226', '1:14180', '1:23972', '1:19796', '1:21666',
  '1:18193', '1:16383', '1:23366', '1:25443', '1:18186', '1:16133',
  '1:16342', '1:16347', '1:21581', '1:18189', '1:17063', '1:18187',
  '1:15983', '1:22060', '1:23917', '1:15969', '1:21832', '1:14026',
  '1:14174', '1:25353', '1:16358', '1:17019', '1:19795', '1:21818',
  '1:15963', '1:15907', '1:16346', '1:21414', '1:15610', '1:21574',
  '1:19799', '1:19804', '1:14154', '1:15300', '1:16344', '1:21755',
  '1:16168', '1:24224', '1:18489', '1:19800', '1:15295', '1:15294',
  '1:22764', '1:22266', '1:14198', '1:22356', '1:21607', '1:16368',
  '1:14057', '1:15962', '1:24916', '1:16577', '1:14192', '1:15293',
  '1:22376', '1:23127', '1:14186', '1:25202', '1:21470', '1:21571',
  '1:18141', '1:16108', '1:24673', '1:17148', '1:21751', '1:16653',
  '1:22154', '1:18192', '1:21431', '1:26317', '1:24935', '1:14033',
  '1:25249', '1:18278', '1:14155', '1:19864', '1:25357', '1:17650',
  '1:15611', '1:19803', '1:14153', '1:18268', '1:21778', '1:19797',
  '1:15965', '1:14156', '1:18184', '1:16348', '1:18188', '1:16074',
];

void main() async {
  print('🚀 Generating all 348 components...\n');
  
  final componentsDir = 'lib/components';
  final storiesDir = 'lib/stories';
  
  // Ensure directories exist
  await Directory(componentsDir).create(recursive: true);
  await Directory(storiesDir).create(recursive: true);
  
  // Group components by inferred category
  final categorized = <String, List<Map<String, String>>>{};
  
  for (final nodeId in allNodeIds) {
    final componentName = _generateComponentName(nodeId);
    final category = _inferCategory(componentName);
    
    categorized.putIfAbsent(category, () => []).add({
      'name': componentName,
      'nodeId': nodeId,
      'category': category,
    });
  }
  
  print('📦 Categories identified: ${categorized.length}');
  for (final entry in categorized.entries) {
    print('   - ${entry.key}: ${entry.value.length} components');
  }
  print('');
  
  // Generate components by category
  int totalGenerated = 0;
  for (final entry in categorized.entries) {
    print('📝 Generating ${entry.key} components...');
    await _generateCategory(
      entry.key,
      entry.value,
      componentsDir,
      storiesDir,
    );
    totalGenerated += entry.value.length;
    print('   ✅ Generated ${entry.value.length} components\n');
  }
  
  // Update all_stories.dart
  await _updateAllStories(storiesDir, categorized.keys.toList());
  
  print('🎉 Successfully generated $totalGenerated components!');
  print('\nNext steps:');
  print('1. Review generated components in lib/components/');
  print('2. Extract actual designs from Figma using Figma API');
  print('3. Update component implementations with real designs');
  print('4. Add proper props based on Figma component properties');
  print('5. Test in Storybook: flutter run');
}

Future<void> _generateCategory(
  String category,
  List<Map<String, String>> components,
  String componentsDir,
  String storiesDir,
) async {
  final categoryDir = path.join(componentsDir, category);
  await Directory(categoryDir).create(recursive: true);
  
  final storyBuffer = StringBuffer();
  storyBuffer.writeln(_getStoryHeader(category));
  
  for (final component in components) {
    final componentName = component['name']!;
    final nodeId = component['nodeId']!;
    
    // Generate component file
    await _generateComponentFile(categoryDir, componentName, nodeId, category);
    
    // Generate story entry
    storyBuffer.writeln(_generateStoryEntry(componentName, category, nodeId));
  }
  
  storyBuffer.writeln('  ];');
  storyBuffer.writeln('}');
  
  // Write story file
  final storyFile = File(path.join(storiesDir, '${category}_stories.dart'));
  await storyFile.writeAsString(storyBuffer.toString());
}

Future<void> _generateComponentFile(
  String categoryDir,
  String componentName,
  String nodeId,
  String category,
) async {
  final fileName = _toSnakeCase(componentName);
  final className = _toPascalCase(componentName);
  final file = File(path.join(categoryDir, '${fileName}.dart'));
  
  final props = _getPropsForCategory(category);
  final implementation = _getImplementationForCategory(category, className, props);
  
  final content = _generateComponentCode(
    className: className,
    componentName: componentName,
    category: category,
    nodeId: nodeId,
    props: props,
    implementation: implementation,
  );
  
  await file.writeAsString(content);
}

String _generateComponentCode({
  required String className,
  required String componentName,
  required String category,
  required String nodeId,
  required List<Map<String, dynamic>> props,
  required String implementation,
}) {
  final propsDoc = props.map((p) => 
    '  /// ${p['description']}${p['required'] == true ? ' (required)' : ''}${p['defaultValue'] != null ? ' Default: `${p['defaultValue']}`.' : ''}'
  ).join('\n');
  
  final propsDeclarations = props.map((p) {
    final required = p['required'] == true ? 'required ' : '';
    final nullable = p['nullable'] == true ? '?' : '';
    final defaultValue = p['defaultValue'] != null ? ' = ${p['defaultValue']}' : '';
    return '    $required${p['type']}$nullable ${p['name']}$defaultValue,';
  }).join('\n');
  
  // Fix: Add missing parameter names
  final propsWithNames = props.map((p) {
    final required = p['required'] == true ? 'required ' : '';
    final nullable = p['nullable'] == true ? '?' : '';
    final defaultValue = p['defaultValue'] != null ? ' = ${p['defaultValue']}' : '';
    return '    $required${p['type']}$nullable ${p['name']}$defaultValue,';
  }).join('\n');
  
  return '''import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// $componentName
/// 
/// **Category:** $category
/// **Figma Node:** $nodeId
/// 
/// ${_getCategoryDescription(category)}
/// 
/// **Props:**
${props.map((p) => '/// - `${p['name']}` (${p['type']}): ${p['description']}').join('\n')}
/// 
/// **Usage Example:**
/// ```dart
/// $className(
${props.where((p) => p['required'] == true).map((p) => '///   ${p['name']}: value,').join('\n')}
/// )
/// ```
class $className extends StatelessWidget {
$propsDoc

  const $className({
    super.key,
$propsDeclarations
  });

  @override
  Widget build(BuildContext context) {
$implementation
  }
}
''';
}

String _getCategoryDescription(String category) {
  switch (category) {
    case 'buttons':
      return 'Button components for user interactions. Supports various styles, sizes, and states.';
    case 'cards':
      return 'Card components for displaying content in elevated containers.';
    case 'inputs':
      return 'Input components for user data entry. Includes text fields, dropdowns, and more.';
    case 'dialogs':
      return 'Dialog and modal components for overlays and user confirmations.';
    case 'navigation':
      return 'Navigation components including app bars, bottom navigation, and tabs.';
    case 'chips':
      return 'Chip components for tags, filters, and compact information display.';
    case 'lists':
      return 'List components for displaying collections of items.';
    case 'icons':
      return 'Icon components and iconography from the design system.';
    case 'avatars':
      return 'Avatar components for user profile pictures and initials.';
    case 'badges':
      return 'Badge components for notifications, counts, and status indicators.';
    case 'progress':
      return 'Progress indicators and loaders for async operations.';
    case 'switches':
      return 'Switch and toggle components for boolean inputs.';
    case 'sliders':
      return 'Slider components for range and value selection.';
    case 'tabs':
      return 'Tab components for organizing content into sections.';
    case 'menus':
      return 'Menu and dropdown components for navigation and actions.';
    case 'tooltips':
      return 'Tooltip components for contextual help and information.';
    case 'snackbars':
      return 'Snackbar and toast components for notifications and feedback.';
    default:
      return 'Component from Sharpsell Design System.';
  }
}

List<Map<String, dynamic>> _getPropsForCategory(String category) {
  switch (category) {
    case 'buttons':
      return [
        {'name': 'text', 'type': 'String', 'description': 'The text label displayed on the button', 'required': true},
        {'name': 'onPressed', 'type': 'VoidCallback', 'description': 'Callback function invoked when button is pressed', 'nullable': true},
        {'name': 'enabled', 'type': 'bool', 'description': 'Whether the button is enabled and interactive', 'defaultValue': 'true'},
        {'name': 'size', 'type': 'ButtonSize', 'description': 'Size variant of the button', 'defaultValue': 'ButtonSize.medium'},
        {'name': 'icon', 'type': 'IconData', 'description': 'Optional icon to display alongside text', 'nullable': true},
        {'name': 'fullWidth', 'type': 'bool', 'description': 'Whether button should take full available width', 'defaultValue': 'false'},
      ];
    case 'cards':
      return [
        {'name': 'title', 'type': 'String', 'description': 'Card title text', 'nullable': true},
        {'name': 'subtitle', 'type': 'String', 'description': 'Card subtitle text', 'nullable': true},
        {'name': 'content', 'type': 'String', 'description': 'Main content text', 'nullable': true},
        {'name': 'elevation', 'type': 'double', 'description': 'Card elevation/shadow depth', 'defaultValue': 'SharpsellTheme.elevationLow'},
        {'name': 'onTap', 'type': 'VoidCallback', 'description': 'Callback when card is tapped', 'nullable': true},
        {'name': 'actions', 'type': 'List<Widget>', 'description': 'Action buttons/widgets to display', 'nullable': true},
      ];
    case 'inputs':
      return [
        {'name': 'label', 'type': 'String', 'description': 'Input field label', 'nullable': true},
        {'name': 'hint', 'type': 'String', 'description': 'Placeholder hint text', 'nullable': true},
        {'name': 'value', 'type': 'String', 'description': 'Current input value', 'nullable': true},
        {'name': 'onChanged', 'type': 'ValueChanged<String>', 'description': 'Callback when value changes', 'nullable': true},
        {'name': 'errorText', 'type': 'String', 'description': 'Error message to display', 'nullable': true},
        {'name': 'enabled', 'type': 'bool', 'description': 'Whether input is enabled', 'defaultValue': 'true'},
      ];
    default:
      return [
        {'name': 'content', 'type': 'String', 'description': 'Component content', 'nullable': true},
      ];
  }
}

String _getImplementationForCategory(String category, String className, List<Map<String, dynamic>> props) {
  switch (category) {
    case 'buttons':
      return '''    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        backgroundColor: SharpsellTheme.primaryColor,
        foregroundColor: Colors.white,
        elevation: SharpsellTheme.elevationLow,
        padding: const EdgeInsets.symmetric(
          horizontal: SharpsellTheme.spacingL,
          vertical: SharpsellTheme.spacingM,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
        ),
      ),
      child: Row(
        mainAxisSize: fullWidth ? MainAxisSize.max : MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(icon),
            const SizedBox(width: SharpsellTheme.spacingS),
          ],
          Text(text),
        ],
      ),
    );''';
    case 'cards':
      return '''    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
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
              if (subtitle != null) ...[
                const SizedBox(height: SharpsellTheme.spacingXS),
                Text(
                  subtitle!,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: SharpsellTheme.textSecondary,
                  ),
                ),
              ],
              if (content != null) ...[
                const SizedBox(height: SharpsellTheme.spacingM),
                Text(
                  content!,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
              if (actions != null && actions!.isNotEmpty) ...[
                const SizedBox(height: SharpsellTheme.spacingM),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: actions!,
                ),
              ],
            ],
          ),
        ),
      ),
    );''';
    case 'inputs':
      return '''    return TextField(
      enabled: enabled,
      controller: value != null ? TextEditingController(text: value) : null,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        errorText: errorText,
        filled: true,
        fillColor: SharpsellTheme.surfaceColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
        ),
      ),
    );''';
    default:
      return '''    // TODO: Implement $className based on Figma design (Node: ${_extractNodeId(className)})
    // Extract design specifications from Figma and implement accordingly
    return Container(
      padding: const EdgeInsets.all(SharpsellTheme.spacingM),
      decoration: BoxDecoration(
        color: SharpsellTheme.surfaceColor,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusM),
      ),
      child: Text(
        '$className',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );''';
  }
}

String _generateStoryEntry(String componentName, String category, String nodeId) {
  final className = _toPascalCase(componentName);
  return '''    Story(
      name: '$category/$componentName',
      description: '$componentName component from Figma (Node: $nodeId)',
      builder: (context) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: $className(
            // TODO: Add knobs based on component props
            // Use context.knobs.text(), context.knobs.boolean(), etc.
          ),
        ),
      ),
    ),''';
}

String _getStoryHeader(String category) {
  return '''import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';
import '../components/$category/${_toSnakeCase(category)}_components.dart';

/// $category component stories
/// Auto-generated from Figma designs
List<Story> get ${category}Stories {
  return [
''';
}

Future<void> _updateAllStories(String storiesDir, List<String> categories) async {
  final allStoriesFile = File(path.join(storiesDir, 'all_stories.dart'));
  
  final imports = categories.map((c) => 
    "import '${c}_stories.dart';"
  ).join('\n');
  
  final exports = categories.map((c) => 
    "    ...${c}Stories,"
  ).join('\n');
  
  final content = '''import 'package:storybook_flutter/storybook_flutter.dart';
$imports

/// All stories for the Sharpsell Design Storybook
/// Auto-generated - contains all 348 components
List<Story> get allStories {
  return [
$exports
  ];
}
''';
  
  await allStoriesFile.writeAsString(content);
}

String _generateComponentName(String nodeId) {
  return 'Component_${nodeId.replaceAll(':', '_')}';
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

String _toPascalCase(String input) {
  return input
      .split(RegExp(r'[\s_-]+'))
      .map((word) => word.isEmpty
          ? ''
          : word[0].toUpperCase() + word.substring(1).toLowerCase())
      .join();
}

String _extractNodeId(String className) {
  // Extract node ID from component name
  final match = RegExp(r'Component_(\d+)_(\d+)').firstMatch(className);
  if (match != null) {
    return '${match.group(1)}:${match.group(2)}';
  }
  return 'unknown';
}
