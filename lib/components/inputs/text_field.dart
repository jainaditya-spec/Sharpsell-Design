import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Text field component with design system styling
class SharpsellTextField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? helperText;
  final String? errorText;
  final TextEditingController? controller;
  final bool obscureText;
  final bool enabled;
  final bool readOnly;
  final TextInputType? keyboardType;
  final int? maxLines;
  final int? maxLength;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;

  const SharpsellTextField({
    super.key,
    this.label,
    this.hint,
    this.helperText,
    this.errorText,
    this.controller,
    this.obscureText = false,
    this.enabled = true,
    this.readOnly = false,
    this.keyboardType,
    this.maxLines = 1,
    this.maxLength,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
    this.onChanged,
    this.onSubmitted,
    this.focusNode,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null && errorText!.isNotEmpty;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null) ...[
          Text(
            label!,
            style: SharpsellTheme.paragraph2.copyWith(
              color: hasError ? SharpsellTheme.errorColor : SharpsellTheme.textPrimary,
            ),
          ),
          const SizedBox(height: SharpsellTheme.inlineDefault),
        ],
        TextField(
          controller: controller,
          obscureText: obscureText,
          enabled: enabled,
          readOnly: readOnly,
          keyboardType: keyboardType,
          maxLines: maxLines,
          maxLength: maxLength,
          focusNode: focusNode,
          textInputAction: textInputAction,
          onTap: onTap,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          style: SharpsellTheme.paragraph1.copyWith(color: SharpsellTheme.textPrimary),
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: SharpsellTheme.paragraph1.copyWith(color: SharpsellTheme.textSecondary),
            helperText: hasError ? null : helperText,
            helperStyle: SharpsellTheme.paragraph5.copyWith(color: SharpsellTheme.textSecondary),
            errorText: hasError ? errorText : null,
            errorStyle: SharpsellTheme.paragraph5.copyWith(color: SharpsellTheme.errorColor),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: enabled ? SharpsellTheme.surfaceColor : SharpsellTheme.lightGrey,
            contentPadding: const EdgeInsets.symmetric(
              horizontal: SharpsellTheme.paddingMD,
              vertical: SharpsellTheme.paddingMD,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
              borderSide: BorderSide(
                color: hasError ? SharpsellTheme.errorColor : SharpsellTheme.lightGrey2,
                width: SharpsellTheme.borderWidthDefault,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
              borderSide: BorderSide(
                color: hasError ? SharpsellTheme.errorColor : SharpsellTheme.lightGrey2,
                width: SharpsellTheme.borderWidthDefault,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
              borderSide: BorderSide(
                color: hasError ? SharpsellTheme.errorColor : SharpsellTheme.primaryColor,
                width: SharpsellTheme.borderWidthThick,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
              borderSide: BorderSide(
                color: SharpsellTheme.errorColor,
                width: SharpsellTheme.borderWidthDefault,
              ),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(SharpsellTheme.radiusMD),
              borderSide: BorderSide(
                color: SharpsellTheme.lightGrey2,
                width: SharpsellTheme.borderWidthDefault,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
