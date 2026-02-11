import 'package:flutter/material.dart';
import '../../app/theme.dart';
import '../buttons/primary_button.dart';
import '../buttons/text_button.dart' as text_button;

/// Dialog component with design system styling
class SharpsellDialog extends StatelessWidget {
  final String title;
  final String? message;
  final Widget? content;
  final String? primaryActionLabel;
  final VoidCallback? onPrimaryAction;
  final String? secondaryActionLabel;
  final VoidCallback? onSecondaryAction;
  final bool showCloseButton;
  final double? maxWidth;

  const SharpsellDialog({
    super.key,
    required this.title,
    this.message,
    this.content,
    this.primaryActionLabel,
    this.onPrimaryAction,
    this.secondaryActionLabel,
    this.onSecondaryAction,
    this.showCloseButton = true,
    this.maxWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SharpsellTheme.radiusLG),
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth ?? 400,
        ),
        child: Padding(
          padding: const EdgeInsets.all(SharpsellTheme.paddingXL),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: SharpsellTheme.heading3,
                    ),
                  ),
                  if (showCloseButton)
                    IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () => Navigator.of(context).pop(),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                ],
              ),
              if (message != null) ...[
                const SizedBox(height: SharpsellTheme.stackDefault),
                Text(
                  message!,
                  style: SharpsellTheme.paragraph1.copyWith(
                    color: SharpsellTheme.textSecondary,
                  ),
                ),
              ],
              if (content != null) ...[
                const SizedBox(height: SharpsellTheme.stackDefault),
                content!,
              ],
              if (primaryActionLabel != null || secondaryActionLabel != null) ...[
                const SizedBox(height: SharpsellTheme.stackRelaxed),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (secondaryActionLabel != null)
                      text_button.TextButtonComponent(
                        text: secondaryActionLabel!,
                        onPressed: onSecondaryAction ?? () => Navigator.of(context).pop(),
                      ),
                    if (secondaryActionLabel != null && primaryActionLabel != null)
                      const SizedBox(width: SharpsellTheme.inlineDefault),
                    if (primaryActionLabel != null)
                      PrimaryButton(
                        text: primaryActionLabel!,
                        onPressed: onPrimaryAction ?? () => Navigator.of(context).pop(),
                      ),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  static Future<T?> show<T>({
    required BuildContext context,
    required String title,
    String? message,
    Widget? content,
    String? primaryActionLabel,
    VoidCallback? onPrimaryAction,
    String? secondaryActionLabel,
    VoidCallback? onSecondaryAction,
    bool showCloseButton = true,
    double? maxWidth,
  }) {
    return showDialog<T>(
      context: context,
      builder: (context) => SharpsellDialog(
        title: title,
        message: message,
        content: content,
        primaryActionLabel: primaryActionLabel,
        onPrimaryAction: onPrimaryAction,
        secondaryActionLabel: secondaryActionLabel,
        onSecondaryAction: onSecondaryAction,
        showCloseButton: showCloseButton,
        maxWidth: maxWidth,
      ),
    );
  }
}
