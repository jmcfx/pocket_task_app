import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theme/app_colors.dart';

class TaskCompletionContainer extends StatelessWidget {
  const TaskCompletionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24.r, horizontal: 16.r),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer,
            blurRadius: 1.r,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 8.h,
        children: [
          Text("Today's completed tasks", style: theme.textTheme.bodySmall),
          Text("0 out of 0", style: theme.textTheme.titleLarge),
          SizedBox(height: 7.h),
          Row(
            spacing: 16.r,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(24.r),
                  minHeight: 8.h,
                ),
              ),
              Text(
                "0% done",
                style: theme.textTheme.titleSmall!.copyWith(
                  color: AppColors.surface700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
