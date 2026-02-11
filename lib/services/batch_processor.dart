import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'component_generator.dart';
import 'figma_service.dart';

/// Batch processor for extracting and generating components from Figma
class BatchProcessor {
  final FigmaService figmaService;
  final ComponentGenerator componentGenerator;
  final List<String> nodeIds;

  BatchProcessor({
    required this.figmaService,
    required this.componentGenerator,
    required this.nodeIds,
  });

  /// Process all components from Figma
  Future<void> processAllComponents() async {
    print('Starting batch processing of ${nodeIds.length} components...');
    
    final results = <String, dynamic>{};
    int successCount = 0;
    int failureCount = 0;

    for (int i = 0; i < nodeIds.length; i++) {
      final nodeId = nodeIds[i];
      print('Processing ${i + 1}/${nodeIds.length}: $nodeId');
      
      try {
        final designData = await figmaService.getNodeDesign(nodeId);
        
        // Extract component information
        final componentInfo = _extractComponentInfo(designData, nodeId);
        
        // Generate component
        await componentGenerator.generateComponent(
          componentName: componentInfo['name'],
          category: componentInfo['category'],
          designData: designData,
        );
        
        // Generate story
        await componentGenerator.generateStory(
          componentName: componentInfo['name'],
          category: componentInfo['category'],
          designData: designData,
        );
        
        results[nodeId] = {'status': 'success', 'info': componentInfo};
        successCount++;
        
        // Rate limiting - wait a bit between requests
        await Future.delayed(const Duration(milliseconds: 100));
      } catch (e) {
        print('Error processing $nodeId: $e');
        results[nodeId] = {'status': 'error', 'error': e.toString()};
        failureCount++;
      }
    }

    print('\nBatch processing complete!');
    print('Success: $successCount');
    print('Failures: $failureCount');
    
    // Save results
    await _saveResults(results);
  }

  Map<String, dynamic> _extractComponentInfo(
    Map<String, dynamic> designData,
    String nodeId,
  ) {
    // Extract component name and category from Figma data
    // This is a simplified version - actual implementation would parse
    // the Figma response structure more carefully
    
    final name = designData['nodes']?[nodeId]?['document']?['name'] ?? 
                 'Component_$nodeId';
    final category = _inferCategory(name);
    
    return {
      'name': name,
      'category': category,
      'nodeId': nodeId,
    };
  }

  String _inferCategory(String name) {
    final lowerName = name.toLowerCase();
    
    if (lowerName.contains('button') || lowerName.contains('btn')) {
      return 'buttons';
    } else if (lowerName.contains('card')) {
      return 'cards';
    } else if (lowerName.contains('input') || lowerName.contains('field') || lowerName.contains('textfield')) {
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

  Future<void> _saveResults(Map<String, dynamic> results) async {
    final resultsFile = File('batch_processing_results.json');
    await resultsFile.writeAsString(
      const JsonEncoder.withIndent('  ').convert(results),
    );
    print('Results saved to ${resultsFile.path}');
  }
}
