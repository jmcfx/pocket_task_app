import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pocket_tasks_app/core/theme/app_colors.dart';

class AppTextFormFieldStyle extends StatelessWidget {
  const AppTextFormFieldStyle({
    super.key,
    required this.title,
    required this.hint,
    this.controller,
    this.textAlignVertical,
    this.maxLines,
    this.isDescription = false,
    this.onChanged,
  });

  final String title, hint;
  final TextEditingController? controller;
  final TextAlignVertical? textAlignVertical;
  final int? maxLines;
  final bool isDescription;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(title, style: theme.textTheme.titleMedium),
            SizedBox(height: 8.h),
            TextFormField(
              onChanged: onChanged,
              maxLines: maxLines,
              controller: controller,
              textAlignVertical: textAlignVertical,
              decoration: InputDecoration(
                contentPadding: isDescription
                    ? EdgeInsets.only(top: 15.h, left: 16.r, right: 8.r)
                    : EdgeInsets.symmetric(horizontal: 16.r, vertical: 20.h),
                hint: Text(
                  hint,
                  style: theme.textTheme.titleSmall!.copyWith(fontSize: 14.sp, color: AppColors.surface200),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide(color: theme.dividerColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide(color: theme.primaryColor),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
