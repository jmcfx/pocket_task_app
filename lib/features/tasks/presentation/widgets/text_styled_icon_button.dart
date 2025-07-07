import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyledIconButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final bool isIcon;

  final double horizontalPadding;
  const TextStyledIconButton({
    super.key,
    required this.label,
    this.icon,
    required this.onPressed,
    this.backgroundColor,
    this.horizontalPadding = 92.0,
    this.isIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final theme = Theme.of(context);
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        foregroundColor: colorScheme.onPrimary,
        backgroundColor: colorScheme.primary,
        padding: EdgeInsets.symmetric(
          vertical: 11.h,
          horizontal: horizontalPadding.r,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      icon: isIcon
          ? Icon(icon, size: 24.sp, color: theme.iconTheme.color)
          : null,
      label: Text(label, style: theme.textTheme.labelLarge),

      onPressed: onPressed,
    );
  }
}
