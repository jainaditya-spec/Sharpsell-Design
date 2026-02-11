import 'package:flutter/material.dart';
import '../../app/theme.dart';

/// Avatar component with design system styling
class SharpsellAvatar extends StatelessWidget {
  final String? imageUrl;
  final String? initials;
  final IconData? icon;
  final AvatarSize size;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final bool showBadge;
  final Color? badgeColor;

  const SharpsellAvatar({
    super.key,
    this.imageUrl,
    this.initials,
    this.icon,
    this.size = AvatarSize.medium,
    this.backgroundColor,
    this.foregroundColor,
    this.showBadge = false,
    this.badgeColor,
  }) : assert(
          imageUrl != null || initials != null || icon != null,
          'Either imageUrl, initials, or icon must be provided',
        );

  double get _size {
    switch (size) {
      case AvatarSize.small:
        return 32.0;
      case AvatarSize.medium:
        return 40.0;
      case AvatarSize.large:
        return 56.0;
      case AvatarSize.xlarge:
        return 80.0;
    }
  }

  double get _fontSize {
    switch (size) {
      case AvatarSize.small:
        return SharpsellTheme.paragraph5.fontSize!;
      case AvatarSize.medium:
        return SharpsellTheme.paragraph3.fontSize!;
      case AvatarSize.large:
        return SharpsellTheme.paragraph1.fontSize!;
      case AvatarSize.xlarge:
        return SharpsellTheme.heading3.fontSize!;
    }
  }

  double get _badgeSize {
    switch (size) {
      case AvatarSize.small:
        return 8.0;
      case AvatarSize.medium:
        return 10.0;
      case AvatarSize.large:
        return 12.0;
      case AvatarSize.xlarge:
        return 16.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget avatar;

    if (imageUrl != null) {
      avatar = CircleAvatar(
        radius: _size / 2,
        backgroundImage: NetworkImage(imageUrl!),
        backgroundColor: SharpsellTheme.lightGrey,
      );
    } else if (initials != null) {
      avatar = CircleAvatar(
        radius: _size / 2,
        backgroundColor: backgroundColor ?? SharpsellTheme.primaryColor,
        child: Text(
          initials!.toUpperCase(),
          style: SharpsellTheme.paragraph2.copyWith(
            color: foregroundColor ?? SharpsellTheme.white,
            fontSize: _fontSize,
          ),
        ),
      );
    } else {
      avatar = CircleAvatar(
        radius: _size / 2,
        backgroundColor: backgroundColor ?? SharpsellTheme.primaryColor,
        child: Icon(
          icon,
          size: _fontSize,
          color: foregroundColor ?? SharpsellTheme.white,
        ),
      );
    }

    if (showBadge) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          avatar,
          Positioned(
            right: -2,
            top: -2,
            child: Container(
              width: _badgeSize,
              height: _badgeSize,
              decoration: BoxDecoration(
                color: badgeColor ?? SharpsellTheme.successColor,
                shape: BoxShape.circle,
                border: Border.all(
                  color: SharpsellTheme.white,
                  width: 2,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return avatar;
  }
}

enum AvatarSize {
  small,
  medium,
  large,
  xlarge,
}
