import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_image.dart';
import '../../../../router/app_router/app_router.dart';
import 'text_styled_icon_button.dart';

class NoTaskCreatedView extends StatelessWidget {
  const NoTaskCreatedView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppImage.taskImage, fit: BoxFit.cover, scale: 0.8.r),
        SizedBox(height: 16.h),
        Text("No tasks created yet", style: theme.textTheme.titleMedium),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.r),
          child: Text(
            "You haven't created any tasks yet.start by creating on to stay on top of what matters.",
            style: theme.textTheme.titleSmall!.copyWith(fontSize: 15.sp),
          ),
        ),
        SizedBox(height: 25.h),
        TextStyledIconButton(
          label: "Create your first task",
          icon: Icons.add,
          onPressed: () {
            context.router.push(NewTaskRoute());
          },
        ),
      ],
    );
  }
}