import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pocket_tasks_app/core/extensions/task_status.dart';
import 'package:pocket_tasks_app/features/tasks/presentation/bloc/task_bloc.dart';

import '../../../../core/constants/app_image.dart';

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final selectedTasks = context.select(
      (TaskBloc bloc) => bloc.state.tasksSuccess,
    );
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 1.r),
        itemCount: selectedTasks.length,
        itemBuilder: (_, index) {
          final taskState = selectedTasks[index];
          return Padding(
            padding: EdgeInsets.only(bottom: 16.h),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 16.r, horizontal: 16.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: theme.colorScheme.onSurfaceVariant,
                  width: 0.4.r,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 4.h,
                          horizontal: 8.r,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onErrorContainer,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Text(
                          taskState.status.label,
                          style: theme.textTheme.labelSmall!.copyWith(
                          color: taskState.status.color,
                          ),
                        ),
                      ),
                      Image.asset(AppImage.dotImage),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    taskState.title,
                    style: theme.textTheme.titleMedium!.copyWith(
                      fontSize: 15.sp,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    taskState.note ?? "",
                    style: theme.textTheme.bodySmall!.copyWith(fontSize: 12.sp),
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    spacing: 8.r,
                    children: [
                      Image.asset(AppImage.flagImage),
                      Text(taskState.createdAt.toString()),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
