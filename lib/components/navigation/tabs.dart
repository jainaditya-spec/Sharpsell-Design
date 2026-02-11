import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Tabs component with design system styling
class SharpsellTabs extends StatelessWidget {
  final List<String> tabs;
  final int selectedIndex;
  final ValueChanged<int>? onTabChanged;
  final TabController? controller;

  const SharpsellTabs({
    super.key,
    required this.tabs,
    this.selectedIndex = 0,
    this.onTabChanged,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    if (controller != null) {
      return TabBar(
        controller: controller,
        tabs: tabs.map((tab) => Tab(text: tab)).toList(),
        labelColor: SharpsellTheme.primaryColor,
        unselectedLabelColor: SharpsellTheme.textSecondary,
        labelStyle: SharpsellTheme.paragraph2,
        unselectedLabelStyle: SharpsellTheme.paragraph1,
        indicatorColor: SharpsellTheme.primaryColor,
        indicatorWeight: 2,
        onTap: onTabChanged,
      );
    }

    return Container(
      decoration: BoxDecoration(
        color: SharpsellTheme.lightGrey,
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          tabs.length,
          (index) => Expanded(
            child: _TabItem(
              label: tabs[index],
              isSelected: index == selectedIndex,
              onTap: () => onTabChanged?.call(index),
            ),
          ),
        ),
      ),
    );
  }
}

class _TabItem extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;

  const _TabItem({
    required this.label,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: SharpsellTheme.paddingMD,
          vertical: SharpsellTheme.paddingSM,
        ),
        decoration: BoxDecoration(
          color: isSelected ? SharpsellTheme.white : Colors.transparent,
          borderRadius: BorderRadius.circular(SharpsellTheme.radiusSM),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: SharpsellTheme.blackAlpha10,
                    blurRadius: 4,
                    offset: const Offset(0, 1),
                  ),
                ]
              : null,
        ),
        child: Center(
          child: Text(
            label,
            style: isSelected ? SharpsellTheme.paragraph2 : SharpsellTheme.paragraph1,
          ),
        ),
      ),
    );
  }
}
