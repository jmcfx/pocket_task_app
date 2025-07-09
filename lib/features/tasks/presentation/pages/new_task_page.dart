import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pocket_tasks_app/features/tasks/presentation/bloc/task_bloc.dart';
import 'package:pocket_tasks_app/features/tasks/presentation/widgets/app_text_form_filed_style.dart';
import 'package:pocket_tasks_app/features/tasks/presentation/widgets/due_date_time_field.dart';
import 'package:pocket_tasks_app/features/tasks/presentation/widgets/text_styled_icon_button.dart';

@RoutePage()
class NewTaskPage extends HookWidget {
  const NewTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final titleController = useTextEditingController();
    final descController = useTextEditingController();
    final selectedDateTime = useState<DateTime?>(null);
    final taskBloc = context.read<TaskBloc>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Task"),
        backgroundColor: theme.scaffoldBackgroundColor,
      ),
      body: BlocListener<TaskBloc, TaskState>(
        listenWhen: (previous, current) =>
            previous.viewState != current.viewState ||
            previous.taskFailure != current.taskFailure,
        listener: (context, state) {
          if (state.viewState.isError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.taskFailure ?? "")));
          } else if (state.viewState.isSuccess) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(const SnackBar(content: Text("Task created")));
            context.router.pop();
          }
        },
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.r,
                    vertical: 25.h,
                  ),
                  child: Column(
                    children: [
                      AppTextFormFieldStyle(
                        title: "Title",
                        hint: "Enter Title",
                        controller: titleController,
                        onChanged: (value) {
                          taskBloc.add(TaskEvent.titleChanged(value));
                        },
                      ),
                      SizedBox(height: 40.r),
                      AppTextFormFieldStyle(
                        title: "Description",
                        hint: "Enter Description",
                        controller: descController,
                        onChanged: (value) {
                          taskBloc.add(TaskEvent.descriptionChanged(value));
                        },
                        isDescription: true,
                        maxLines: 4,
                      ),
                      SizedBox(height: 24.r),
                      DueDateTimeField(
                        selectedDateTime: selectedDateTime.value,
                        onDateChanged: (date) {
                          selectedDateTime.value = date;
                          taskBloc.add(TaskEvent.dateChanged(date));
                        },
                        onTimeChanged: (time) {
                          if (selectedDateTime.value != null) {
                            final date = selectedDateTime.value!;
                            final newDate = DateTime(
                              date.year,
                              date.month,
                              date.day,
                              time.hour,
                              time.minute,
                            );
                            selectedDateTime.value = newDate;
                            taskBloc.add(TaskEvent.timeChanged(time));
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 20).r,
                child: TextStyledIconButton(
                  label: "Create Task",
                  onPressed: () {
                    if (titleController.text.trim().isEmpty ||
                        descController.text.trim().isEmpty ||
                        selectedDateTime.value == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("All fields are required"),
                        ),
                      );
                      return;
                    }
                    taskBloc.add(const TaskEvent.addTaskPressed());
                  },
                  isIcon: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
