import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/extensions/task_context_selectors.dart';
import '../widgets/no_task_created_view.dart';
import '../widgets/task_list.dart';
import '../widgets/task_section_title.dart';
import '../widgets/text_styled_icon_button.dart';
import '../widgets/task_completion_container.dart';
import '../../../../core/constants/app_image.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final viewState = context.taskViewState;
    final tasksSuccess = context.taskList;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.r, vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Top Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 12.r,
                    children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundImage: AssetImage(AppImage.profile),
                      ),
                      Text("JMC FX", style: theme.textTheme.titleMedium),
                    ],
                  ),
                  Image.asset(AppImage.bell, height: 24.h),
                ],
              ),
              SizedBox(height: 40.h),
              const TaskCompletionContainer(),
              Expanded(
                child: Builder(
                  builder: (_) {
                    if (viewState.isError) {
                      return const Center(child: Text("Error"));
                    }
                    if (viewState.isLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (viewState.isSuccess && tasksSuccess.isNotEmpty) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [TaskSectionTitle(), TaskList()],
                      );
                    }
                    return const NoTaskCreatedView();
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton: tasksSuccess.isNotEmpty
          ? TextStyledIconButton(
              label: "New Task",
              icon: Icons.add,
              onPressed: () {},
              horizontalPadding: 23.r,
            )
          : null,
    );
  }
}
